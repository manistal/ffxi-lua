--
-- RDM Lua by MigsDank
-- 

-- Gearswap Spec: https://docs.windower.net/addons/gearswap/reference/

RDM_STYLE_SET = 40
RDM_MACRO_BOOK = 8

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
    bind_toggles("~f2", "idle")
    bind_toggles("~f4", "nuke")
end

--
-- Dynammic Set Funcs 
-- 
function equip_base_set(status) 
    -- TP/Engaged Sets (Glass cannon TP vs Tanky TP)
    if status == 'Engaged' then 
        if (player.hpp <= 60) then 
            equip(sets.tp.FullDT)
        else
            equip(sets.tp.Current)
        end
    end

    -- Idle Sets (Regen/DT)
    if status == 'Idle' then 
        equip(sets.idle.Current)
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
           spell.english:startswith("Stun") or -- Stun is Dark Magic but Use MACC Enfeeble Gear
           spell.english:startswith("Repose")
end

function handle_enhancing_spell(spell)
    -- Swap for Empy Bonus when Casting on Others
    if spell.target.type == "SELF" then 
        equip(sets.midcast.EnhancingSelf)
    else
        equip(sets.midcast.EnhancingOthers)
    end

    -- Refresh 
    if spell.english:startswith("Refresh") then 
        equip(sets.midcast.Refresh)
    end

    -- Skill Spells
    if spell.english:startswith("En") or spell.english:startswith("Temper") then 
        equip(sets.midcast.EnhancingSkill)
    end
end

function handle_enfeebling_spell(spell)
    maccEnfeebles = S{"Dispel", "Dispelga", "Frazzle I", "Frazzle II", "Stun", "Repose", "Sleepga II"}

    potencyEnfeebles = S{"Frazzle III", "Distract III", "Paralyze II", "Slow II", "Addle II", "Blind II"}

    durationEnfeebles = S{"Silence", "Sleep", "Sleep II", "Break", "Gravity II", "Gravity", "Bind", "Dia III", "Inundation"}

    if maccEnfeebles:contains(spell.english) then 
        equip(sets.midcast.EnfeeblingMACC)
        if spell.english:startswith("Dispel") then 
            equip(sets.midcast.Dispel)
        end
    elseif potencyEnfeebles:contains(spell.english) then
        equip(sets.midcast.EnfeeblingPotency)
    elseif durationEnfeebles:contains(spell.english) then
        equip(sets.midcast.EnfeeblingDuration)
    else 
        windower.add_to_chat(207, "Warning: No specific set for Enfeebling Spell: " .. spell.english)
        equip(sets.midcast.EnfeeblingMACC)
    end
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
    --- Cure
    if spell.english:startswith("Cure") or spell.english:startswith("Cura") then
        equip(sets.midcast.Cure)
        -- Aurorastorm
        if spell.element == world.weather_element or spell.element == world.day_element then
            equip(sets.midcast.CureWeather)
        end
    -- Status Removal (Removal+ and Healing SKill)
    elseif (spell.english == "Cursna") then 
        equip(sets.midcast.Cursna) 
    -- Enhancing Magic
    elseif is_enhancing_spell(spell) then
        handle_enhancing_spell(spell)
    -- Enfeebling Spells
    elseif is_enfeebling_spell(spell) then
        handle_enfeebling_spell(spell)
    -- Nuking Magic
    elseif spell.skill == "Elemental Magic" then 
        equip(sets.nuke.Current)
    end
end

function aftercast(spell)
    status_change(player.status)
end


function status_change(new,old)
    equip_base_set(new)
end
