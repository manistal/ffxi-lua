--
-- SMN Lua by MigsDank
-- 

-- Gearswap Spec: https://docs.windower.net/addons/gearswap/reference/

DRK_STYLE_SET = 81
DRK_MACRO_BOOK = 5

-- 
-- Main Entry Point 
-- 
function get_sets() 
	-- Sets Include
	-- Requires sets{WeaponSkill: {}, TP: {}, Idle: {}, Precast: {}, Midcast:{}}
    include('common.lua')
	include('SMN_sets.lua')
	set_macro(DRK_MACRO_BOOK, 1)
	set_style(DRK_STYLE_SET)
end

--
-- Dynammic Set Funcs 
-- 
function equip_base_set(status,pet) 
    -- Idle Sets (Regen/DT)
    equip(sets.idle.Default)
    -- Weapon Sets
    equip(sets.weapons.Current)

    -- Idle Perp
    if pet.isvalid then
        equip(sets.idle.Perp)
    end
end


function pet_status_change(a,b)
    windower.add_to_chat(8,'Pet status change: '..tostring(a)..' '..tostring(b)) -- Useful for knowing when you got aggroed
end

-- 
-- Callback Bindings 
-- 
function precast(spell) 
    windower.add_to_chat(8,'precast: '..tostring(spell.name))
    
    -- For Magic use Fast Cast
    if spell.action_type == "Magic" then 
        equip(sets.precast.FastCast)
    end

    -- BP Preacst
    if (spell.type=="BloodPactWard" or spell.type=="BloodPactRage") then
        equip(sets.bp.Precast)
    end
end


function midcast(spell)
    -- Dont swap midaction
    --if (pet.isvalid and pet_midaction()) then
    --    return
    --end

    windower.add_to_chat(8,'midcast: '..tostring(spell.name))
    if string.find(spell.type,'BloodPact') then
        if buffactive['Astral Conduit'] then
            pet_midcast(spell)
        else
            equip(sets.bp.Precast)
        end
    end
end

function aftercast(spell)
    windower.add_to_chat(8,'aftercast: '..tostring(spell.name))
    if pet_midaction() then
        return
    elseif spell and string.find(spell.type,'BloodPact') and not spell.interrupted then
        pet_midcast(spell)
    else
        -- Don't want to swap away too quickly if I'm about to put BP damage gear on
        -- Need to wait 1 in order to allow pet information to update on Release.
        status_change(player.status)
    end
end

function pet_midcast(spell)
    windower.add_to_chat(8,'pet_midcast: '..tostring(spell.name))
    if (spell.type=="BloodPactWard") then 
        equip(sets.bp.Ward) 
    elseif (spell.type=="BloodPactRage") then
        equip(sets.bp.Rage)
    end
end

function pet_aftercast(spell)
    windower.add_to_chat(8,'pet_aftercast: '..tostring(spell.name))
    status_change(player.status)
end


function status_change(new,old)
    equip_base_set(new,pet)
end
