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


function self_command(command)
    cmdArgs = split_string(command)
    if #cmdArgs < 0 then 
        return 
    end

    local cmd = cmdArgs[0]
    if ((cmd == "test") and (#cmdArgs >= 2)) then 
        test_equip(cmdArgs)
    end
    if (cmd == "weapons") then
        toggle_weapons()
    end
    if (cmd == "tp") then
        toggle_tp()
    end
end

--
-- Toggle Weapons
-- 
send_command('bind ~f1 gs c weapons') -- switches ranged sets
local weapon_toggle_idx = 0
function toggle_weapons()
    weapon_toggle_idx = ((weapon_toggle_idx + 1) % (#sets.weapons.List + 1))
    if weapon_toggle_idx == 0 then weapon_toggle_idx = 1 end 
    sets.weapons.Current = sets.weapons[sets.weapons.List[weapon_toggle_idx]]
    equip(sets.weapons.Current)
	send_command("@input /echo <<<< Weapon Set changed to " .. sets.weapons.List[weapon_toggle_idx] .. " " .. weapon_toggle_idx .. " >>>>")
end

-- 
-- Toggle Engaged/TP 
-- 
send_command('bind ~f2 gs c tp') -- switches ranged sets
local tp_toggle_idx = 0
function toggle_tp()
    tp_toggle_idx = ((tp_toggle_idx + 1) % (#sets.tp.List + 1))
    if tp_toggle_idx == 0 then tp_toggle_idx = 1 end 
    sets.tp.Current = sets.tp[sets.tp.List[tp_toggle_idx]]
	send_command("@input /echo <<<< TP Set changed to " .. sets.tp.List[tp_toggle_idx] .. " " .. tp_toggle_idx .. " >>>>")
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