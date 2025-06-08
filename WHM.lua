--
-- Gearswap Lua by MigsDank
-- 
-- Gearswap Spec: https://docs.windower.net/addons/gearswap/reference/
--- 

-- Replace JOB with FFXI 3 Letter Job Name
WHM_STYLE_SET = 83
WHM_MACRO_BOOK = 6

-- 
-- Addon Entry Point
-- 
function get_sets()
    -- Called when job file is loaded
    -- Used for initial setup and defining gear sets
    include('common.lua')
	include('WHM_sets.lua')
	set_macro(WHM_MACRO_BOOK, 1)
	set_style(WHM_STYLE_SET)
    
    -- Set defaults
    bind_toggles("~f1", "weapons")
    bind_toggles("~f2", "idle")
    --bind_toggles("~f3", "engaged")
end

function file_unload()
    -- Called when job file is unloaded
    -- Use for cleanup
end

-- 
-- Custom Functions
-- 
function equip_base_set()
    equip(sets.idle.Current)
    equip(sets.weapons.Current)
end

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
end

function midcast(spell) 
    -- Friendly spells Cure / Status Removal / Enhancing 
    --- Cure
    if spell.english:startswith("Cure") then
        equip(sets.midcast.Cure)
    elseif spell.english:startswith("Curaga") then
        equip(sets.midcast.Curaga)
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
    -- Called after spell completes or is interrupted
    -- Use to return to idle/engaged gear sets
    equip_base_set()
end

-- 
-- Pet Action Callbacks
-- 
function pet_midcast(spell)
    -- Called when pet performs an action
    -- Used for Blood Pacts, Ready moves, etc.
end

function pet_aftercast(spell)
    -- Called after pet action completes
    -- Use to return to idle/engaged sets
end

function pet_change(pet, gain)
    -- Called when pet is summoned or released
    -- gain = true when pet is summoned, false when released
end

-- 
-- Status Change Callbacks
-- 
function pet_status_change(new, old)
    -- Called when pet's status changes (Engaged, Idle, etc)
end

function status_change(new, old)
    -- Called when player status changes
    -- Examples: Idle, Engaged, Resting
    equip_base_set()
end

function buff_change(name, gain, table)
    -- Called when gaining/losing buffs
    -- gain = true when buff applied, false when removed
end

function sub_job_change(new, old)  
    -- Called when switching subjob
end
