--
-- Gearswap Lua by MigsDank
-- 
-- Gearswap Spec: https://docs.windower.net/addons/gearswap/reference/
--- 

-- Replace JOB with FFXI 3 Letter Job Name
WHM_STYLE_SET = 1
WHM_MACRO_BOOK = 1

-- 
-- Addon Entry Point
-- 
function get_sets()
    -- Called when job file is loaded
    -- Used for initial setup and defining gear sets
    include('common.lua')
	include('SMN_sets.lua')
	--set_macro(WHM_MACRO_BOOK, 1)
	--set_style(WHM_STYLE_SET)
    
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
-- Player Action Callbacks
-- 
function precast(spell)
    -- Called before any action/spell is performed
    -- Use for fast cast, pre-weaponskill gear, etc.
end

function midcast(spell) 
    -- Called during spell casting
    -- Use for spell enhancements, magic accuracy, etc.
end

function aftercast(spell)
    -- Called after spell completes or is interrupted
    -- Use to return to idle/engaged gear sets
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
end

function buff_change(name, gain, table)
    -- Called when gaining/losing buffs
    -- gain = true when buff applied, false when removed
end

function sub_job_change(new, old)  
    -- Called when switching subjob
end

-- 
-- Custom Callbacks
-- 
function self_command(command)
    -- Called when using "/gs c <command>"
    -- Used for custom commands and gear toggles
end