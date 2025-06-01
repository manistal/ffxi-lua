--
-- Helper Lua Lua by MigsDank
-- 
-- Gearswap Spec: https://docs.windower.net/addons/gearswap/reference/


function set_macro(book, set)
    if book then
        send_command('@input /macro book '..tostring(book)..';wait .5;input /macro set '..tostring(set))
        return
    end
end

function set_style(sheet)
    send_command('@input ;wait 8.0;input /lockstyleset '..sheet)
end

function split_string(raw_str) 
    result = {}
    idx = 0
    for entry in raw_str:gmatch("%w+") do 
        result[idx] = entry
        idx = idx + 1
    end
    return result
end

function test_equip(cmdArgs)
    local category = cmdArgs[1]
    local spellName = cmdArgs[2]
    if #cmdArgs > 2 then 
        spellName = table.concat({table.unpack(cmdArgs, 2, #cmdArgs)}, " ")
    end
    if sets[category][spellName] then 
        windower.add_to_chat("Testing set "..category.."."..spellName)
        equip(sets[category][spellName])
    else
        windower.add_to_chat("Could not find set "..category.."."..spellName)
    end
end


--[[
local toggle_binds = {
    weapons = {key = '~f1', func = toggle_weapons, current_idx = 0},
    tp = {key = '~f2', func = toggle_tp, current_idx = 0},
    idle = {key = '~f3', func = toggle_idle, current_idx = 0}
}
]]
local toggle_binds = {}
function bind_toggles(key, set_category)
    -- 
    -- Structure is {Keybind, CallbackFunc, CurrentIndex}
    --
    toggle_binds[set_category] = {}
    -- Keybind:
    toggle_binds[set_category].key = key
    -- CallbackFunc:
    toggle_binds[set_category].callbackfunc = function()
        toggle_binds[set_category].current_idx = ((toggle_binds[set_category].current_idx + 1) % (#sets[set_category].List + 1))
        if toggle_binds[set_category].current_idx == 0 then toggle_binds[set_category].current_idx = 1 end 

        local toggle_idx = toggle_binds[set_category].current_idx
        sets[set_category].Current = sets[set_category][sets[set_category].List[toggle_idx]]
        equip(sets[set_category].Current)
	    send_command("@input /echo <<<< ".. set_category .. " Set changed to " .. sets[set_category].List[toggle_idx] .. " " .. toggle_idx .. " >>>>")
    end
    -- CurrentIndex:
    toggle_binds[set_category].current_idx = 0
    -- Bind Keybind
    send_command('bind ' .. key .. ' gs c toggle ' .. set_category)
    -- Initialize the toggle
    toggle_binds[set_category].callbackfunc()
end

-- Cities and Zones
windower.register_event('zone change', 
	function()
        -- Reset to base set
        equip_base_set(player.status)

        -- City Movespeed Sets
		if string.find(world.zone, "Bastok") then
            equip({body="Republic Aketon"})
        elseif string.find(world.zone, "Adoulin") then
            equip({body="Councilor's Garb"})
        end
    end
)

function self_command(command)
    cmdArgs = split_string(command)
    if #cmdArgs < 0 then 
        return 
    end
    local cmd = cmdArgs[0]

    if ((cmd == "test") and (#cmdArgs >= 2)) then 
        test_equip(cmdArgs)
    end

    if (cmd == "toggle") then 
        if (#cmdArgs < 1) then 
            windower.add_to_chat("Usage: gs c toggle <category>"..#cmdArgs)
            return
        end
        local set_category = cmdArgs[1]
        if toggle_binds[set_category] then
            toggle_binds[set_category].callbackfunc()
        else
            windower.add_to_chat("No toggle bind for category: " .. set_category)
        end
    end
end