--
-- DRK Lua by MigsDank
-- 

-- Gearswap Spec: https://docs.windower.net/addons/gearswap/reference/

THF_STYLE_SET = 60
THF_MACRO_BOOK = 5

-- 
-- Main Entry Point 
-- 
function get_sets() 
	-- Sets Include
	-- Requires sets{WeaponSkill: {}, TP: {}, Idle: {}, Precast: {}, Midcast:{}}
    include('common.lua')
	include('THF_sets.lua')
	set_macro(THF_MACRO_BOOK, 1)
	set_style(THF_STYLE_SET)

    sets.weapons.Current = sets.weapons["Daggers Main"]
    sets.tp.Current = sets.tp.FullDT
end

--
-- Dynamic Set Funcs 
-- 
function equip_base_set(status) 
    -- Weapon Sets
    equip(sets.weapons.Current)

    -- TP/Engaged Sets (Glass cannon TP vs Tanky TP)
    if status == 'Engaged' then 
        if player.hpp <= 50 then 
            equip(sets.tp.FullDT)
        else
            equip(sets.tp.Current)
        end
    end

    -- Idle Sets (Regen/DT)
    if status == 'Idle' then 
        equip(sets.idle.Default)
    end
end


-- 
-- Callback Bindings 
-- 
function precast(spell) 
    -- Weaponskills
    if spell.type == "WeaponSkill" then
		if sets.ws[spell.english] then 
			equip(sets.ws[spell.english])
		else
        	equip(sets.ws.Default)
		end
    end

    -- Job Abilities are either specific or none
    if spell.type == "JobAbility" then
		if sets.ja[spell.english] then 
			equip(sets.ja[spell.english])
        else
            equip(sets.ja.Default)
        end
    end

    -- Equip Specific Sets Last
    if sets.precast[spell.english] then
        equip(sets.precast[spell.english])
    end
end


function midcast(spell)
    -- Equip Specific Sets Last
    if sets.midcast[spell.english] then
        equip(sets.midcast[spell.english])
    end
end

function aftercast(spell)
    equip_base_set(player.status)
end


function status_change(new,old)
    equip_base_set(new)
end
