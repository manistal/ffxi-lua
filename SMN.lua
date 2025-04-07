--
-- SMN Lua by MigsDank
-- 

-- Gearswap Spec: https://docs.windower.net/addons/gearswap/reference/

SMN_STYLE_SET = 81
SMN_MACRO_BOOK = 4

-- 
-- Main Entry Point 
-- 
function get_sets() 
	-- Sets Include
	-- Requires sets{WeaponSkill: {}, TP: {}, Idle: {}, Precast: {}, Midcast:{}}
    include('common.lua')
	include('SMN_sets.lua')
	set_macro(SMN_MACRO_BOOK, 1)
	set_style(SMN_STYLE_SET)
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
    if pet ~= nil and pet.isvalid then
        equip(sets.idle.Perp)
    end
end


-- 
-- Callback Bindings 
-- 
function precast(spell) 
    -- For Magic use Fast Cast
    if spell.action_type == "Magic" then 
        equip(sets.precast.FastCast)
    end
end


function midcast(spell)
    -- Dont swap midaction
    if (pet.isvalid and pet_midaction()) then
        return
    end

    if string.find(spell.type,'BloodPact') then
        if buffactive['Astral Conduit'] then
            -- Dont need precast for astral conduit
            pet_midcast(spell)
        else
            equip(sets.bp.Precast)
        end
    end
    -- Need to differentiate
    if spell.action_type == "Magic" then 
        equip(sets.midcast.Default)
    end
end

function aftercast(spell)
    -- Don't want to swap away too quickly if I'm about to put BP damage gear on
    -- Need to wait 1 in order to allow pet information to update on Release.
    if pet_midaction() then
        return
    elseif spell and string.find(spell.type,'BloodPact') and not spell.interrupted then
        pet_midcast(spell)
    else
        status_change(player.status)
    end
end

function pet_midcast(spell)
    if (spell.type=="BloodPactWard") then 
        equip(sets.bp.Ward) 
    elseif (spell.type=="BloodPactRage") then
        equip(sets.bp.Rage)
    end
end

function pet_aftercast(spell)
    status_change(player.status)
end


function status_change(new,old)
    equip_base_set(new,pet)
end

function pet_status_change(a,b)
    equip_base_set(new,pet)
end
