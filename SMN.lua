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
    
    -- Set defaults
    bind_toggles("~f1", "weapons")
    bind_toggles("~f2", "idle")
    bind_toggles("~f3", "perp")
end

--
-- Dynammic Set Funcs 
-- 
function equip_base_set(status,pet) 
    -- Idle Sets (Regen/DT)
    equip(sets.idle.Current)
    -- Weapon Sets
    equip(sets.weapons.Current)

    -- Idle Perp
    if pet ~= nil and pet.isvalid then
        equip(sets.perp.Current)
    end

    if status == 'Engaged' then 
        equip(sets.tp.Default)
    end
end


-- 
-- Callback Bindings 
-- 
function precast(spell) 
    -- Dont swap midaction
    if (pet.isvalid and pet_midaction()) then
        return
    end

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

    -- For BloodPacts Use DELAY
    if string.find(spell.type,'BloodPact') then
        equip(sets.bp.Precast)
    end

    if spell.english:startswith("Cur") then
        equip(sets.midcast.Cure)
    end

    -- OBI CHECK
    obicheck(spell)

end

function aftercast(spell)
    -- Don't want to swap away too quickly if I'm about to put BP damage gear on
    -- Need to wait 1 in order to allow pet information to update on Release.
    if pet_midaction() then
        return
    elseif spell and string.find(spell.type,'BloodPact') and not spell.interrupted then
        return
    else
        status_change(player.status)
    end
end

function pet_midcast(spell)
    if string.find(spell.type,'BloodPact') then
        if (spell.type=="BloodPactWard") then 
            equip(sets.bp.Ward) 
        elseif (spell.type=="BloodPactRage") then
            equip(sets.bp.Rage)
        end
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

function pet_change(pet, gain)
    equip_base_set(player.status,pet)
end