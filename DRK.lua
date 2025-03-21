--
-- DRK Lua by MigsDank
-- 

-- Gearswap Spec: https://docs.windower.net/addons/gearswap/reference/

DRK_STYLE_SET = 40
DRK_MACRO_BOOK = 2

-- 
-- Main Entry Point 
-- 
function get_sets() 
	-- Sets Include
	-- Requires sets{WeaponSkill: {}, TP: {}, Idle: {}, Precast: {}, Midcast:{}}
    include('common.lua')
	include('DRK_sets.lua')
	set_macro(DRK_MACRO_BOOK, 1)
	set_style(DRK_STYLE_SET)
end

--
-- Dynammic Set Funcs 
-- 
function equip_base_set(status) 
    -- TP/Engaged Sets (Glass cannon TP vs Tanky TP)
    if status == 'Engaged' then 
        if (player.hpp <= 60) or (player.hp <= 1800) then 
            equip(sets.tp.Hybrid)
        else
            equip(sets.tp.Default)
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
    -- Default to +WSD Set and override for WS
    elseif spell.type == "WeaponSkill" then
        equip(sets.ws.Default)
		if sets.ws[spell.english] then 
			equip(sets.ws[spell.english])
        end
    -- Job Abilities are either specific or none
    elseif spell.type == "JobAbility" then
		if sets.ja[spell.english] then 
			equip(sets.ja[spell.english])
        end
    -- For Magic use Fast Cast
    elseif spell.action_type == "Magic" then 
        equip(sets.precast.FastCast)
    end
end


function midcast(spell)
    if sets.midcast[spell.english] then
        equip(sets.midcast[spell.english])
    -- For Magic, use basic magic set (DRK Magic)
    elseif spell.action_type == "Magic" then 
        equip(sets.midcast.Default)
    end
end

function aftercast(spell)
    status_change(player.status)
end


function status_change(new,old)
    equip_base_set(new)
end
