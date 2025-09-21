--
-- DRK Lua by MigsDank
-- 

-- Gearswap Spec: https://docs.windower.net/addons/gearswap/reference/

WAR_STYLE_SET = 85
WAR_MACRO_BOOK = 11

-- 
-- Main Entry Point 
-- 
function get_sets() 
	-- Sets Include
	-- Requires sets{WeaponSkill: {}, TP: {}, Idle: {}, Precast: {}, Midcast:{}}
    include('common.lua')
	include('WAR_sets.lua')
	set_macro(WAR_MACRO_BOOK, 1)
	set_style(WAR_STYLE_SET)

    -- Set defaults
    bind_toggles("~f1", "weapons")
    bind_toggles("~f2", "tp")
end

--
-- Dynammic Set Funcs 
-- 
function equip_base_set(status) 
    -- TP/Engaged Sets (Glass cannon TP vs Tanky TP)
    if status == 'Engaged' then 
        if (player.hpp <= 60) or (player.hp <= 1500) then 
            equip(sets.tp.FullDT)
        else
            equip(sets.tp.Current)
        end
    end

    -- Idle Sets (Regen/DT)
    if status == 'Idle' then 
        equip(sets.idle.Default)
    end

    -- Weapon Sets
    equip(sets.weapons.Current)
end


-- 
-- Callback Bindings 
-- 
function precast(spell) 
    -- If we have a specific spell set, use it
    if sets.precast[spell.english] then
        equip(sets.precast[spell.english])
    end

    -- Default to +WSD Set and override for WS
    if spell.type == "WeaponSkill" then
        equip(sets.ws.Default)
		if sets.ws[spell.english] then 
			equip(sets.ws[spell.english])
        end
    end

    -- Job Abilities are either specific, diamond aspis when not engaged
    if spell.type == "JobAbility" then
		if sets.ja[spell.english] then 
			equip(sets.ja[spell.english])
        end

        if player.status != 'Engaged' then 
            equip(sets.ja.DiamondAspis)
        end
    end

    -- For Magic use Fast Cast
    -- TODO: Disable for trust magic 
    -- elseif spell.action_type == "Magic" then 
    --     equip(sets.precast.FastCast)
    -- end
end


function midcast(spell)
    if sets.midcast[spell.english] then
        equip(sets.midcast[spell.english])
    end
end

function aftercast(spell)
    status_change(player.status)
end


function status_change(new,old)
    equip_base_set(new)
end
