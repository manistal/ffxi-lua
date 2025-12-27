--
-- RDM Lua by MigsDank
-- 

-- Gearswap Spec: https://docs.windower.net/addons/gearswap/reference/

RDM_STYLE_SET = 40
RDM_MACRO_BOOK = 2

-- 
-- Main Entry Point 
-- 
function get_sets() 
	-- Sets Include
	-- Requires sets{WeaponSkill: {}, TP: {}, Idle: {}, Precast: {}, Midcast:{}}
    include('common.lua')
	include('RDM_sets.lua')
	set_macro(RDM_MACRO_BOOK, 1)
	set_style(RDM_STYLE_SET)

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
        if (player.hpp <= 60) or (player.hp <= 1800) then 
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
function is_enhancing_spell(spell)
    -- Check if the spell is an enhancing spell
    return spell.skill == 'Enhancing Magic' or 
           spell.english:startswith("Protect") or 
           spell.english:startswith("Shell") or 
           spell.english:startswith("Boost") or 
           spell.english:startswith("Aquaveil") or 
           spell.english:startswith("Auspice")
end

function is_enfeebling_spell(spell)
    -- Check if the spell is an enfeebling spell
    return spell.skill == 'Enfeebling Magic' or 
           spell.english:startswith("Dia") or 
           spell.english:startswith("Slow") or 
           spell.english:startswith("Paralyze") or 
           spell.english:startswith("Addle") 
end

-- 
-- Player Action Callbacks
-- 
function precast(spell)
    -- For Magic use Fast Cast
    if spell.action_type == "Magic" then 
        equip(sets.precast.FastCast)
    end
    -- For JAs
    if spell.type == "JobAbility" then
        if sets.ja[spell.english] then 
            equip(sets.ja[spell.english])
        end
    end
    -- For WS
    if spell.type == "WeaponSkill" then
        equip(sets.ws.Default)
		if sets.ws[spell.english] then 
			equip(sets.ws[spell.english])
        end
    end
end

function midcast(spell) 
    -- Friendly spells Cure / Status Removal / Enhancing 
    --- Cure
    if spell.english:startswith("Cur") then
        equip(sets.midcast.Cure)
        -- Aurorastorm
        if spell.element == world.weather_element or spell.element == world.day_element then
            equip(sets.midcast.CureWeather)
        end
    -- Status Removal (Removal+ and Healing SKill)
    elseif (spell.english == "Cursna") then 
        equip(sets.midcast.Cursna) 
    elseif spell.english:endswith("na") or (spell.english == "Erase") then
        equip(sets.midcast.StatusRemoval)
    -- Enhancing Spells
    elseif spell.english:startswith("Bar") then 
        equip(sets.midcast.BarSpell)
    elseif spell.english:startswith("Regen") then
        equip(sets.midcast.Regen)
    elseif is_enhancing_spell(spell) then
        equip(sets.midcast.Enhancing)
    end 

    -- Enfeebling Spells
    if is_enfeebling_spell(spell) then
        equip(sets.midcast.Enfeebling) 
    end

end

function aftercast(spell)
    status_change(player.status)
end


function status_change(new,old)
    equip_base_set(new)
end
