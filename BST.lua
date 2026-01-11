--
-- DRK Lua by MigsDank
-- 

-- Gearswap Spec: https://docs.windower.net/addons/gearswap/reference/

BST_STYLE_SET = 20
BST_MACRO_BOOK = 9

-- 
-- Main Entry Point 
-- 
function get_sets() 
	-- Sets Include
	-- Requires sets{WeaponSkill: {}, TP: {}, Idle: {}, Precast: {}, Midcast:{}}
    include('common.lua')
	include('BST_sets.lua')
	set_macro(BST_MACRO_BOOK, 1)
	set_style(BST_STYLE_SET)

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
-- Helper Funcs
-- 
function isPetMove(spell)
	noncombat_pet_actions = S{
		'Fight', 'Heel', 'Leave', 'Stay', 'Snarl', 'Spur', 'Run Wild'}
    return (spell.type == "Monster") and (not noncombat_pet_actions:contains(spell.english)) and (not spell.interrupted)
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

    -- Job Abilities are either specific or none
    if spell.type == "JobAbility" then
		if sets.ja[spell.english] then 
			equip(sets.ja[spell.english])
        end
    end

    -- Weaponskills
    if spell.type == "WeaponSkill" then
		if sets.ws[spell.english] then 
			equip(sets.ws[spell.english])
		else
        	equip(sets.ws.Default)
		end
        obicheck(spell)
    end

    -- Pet Casts
    if isPetMove(spell) then
        equip(sets.pet.Precast)
    end

    -- Equip Specific Sets Last
    if sets.precast[spell.english] then
        equip(sets.precast[spell.english])
    end
end


function midcast(spell)
    -- Dont swap midaction
    if (pet.isvalid and pet_midaction()) then
        return
    end

    -- For BloodPacts Use DELAY
    if isPetMove(spell) then
        equip(sets.pet.Precast)
    end

    if spell.english:startswith("Cur") then
        equip(sets.midcast.Cure)
        -- Aurorastorm
        if spell.element == world.weather_element or spell.element == world.day_element then
            equip(sets.midcast.CureWeather)
        end
    end

    -- OBI CHECK
    obicheck(spell)

end

function aftercast(spell)
    -- Don't want to swap away too quickly if I'm about to put BP damage gear on
    -- Need to wait 1 in order to allow pet information to update on Release.
    if pet_midaction() then
        return
    elseif isPetMove(spell) then
        return
    else
        status_change(player.status)
    end
end

function isPhysicalPetReady(spell)
    -- Physical DBLATK BPs
    -- Ramuh: Volt Strike, Siren: Hysteric Assault & Garuda: Predator Claws
    physicalPetReadys = S{"Volt Strike", "Hysteric Assault", "Predator Claws", "Poison Nails"}
    return physicalPetReadys:contains(spell.english)
end

function isMagicAtkPetReady(spell)
    -- Merit/Magic BPs
    -- Thunderstorm, Meteor Strike, Heavenly Strike, Geocrush, Grand Fall, Wind Blade & Thunderspark.
    mabPetReadys = S{"Thunderstorm", "Meteor Strike", "Heavenly Strike", "Geocrush", "Grand Fall", "Wind Blade", "Thunderspark"}
    return mabPetReadys:contains(spell.english)
end

function isMACCPetReady(spell)
    -- BPs with Effects that Need to Land
    -- Sleepga, Volt Strike, Shock Squall, Mewing Lullaby
    MACCPetReady = S{"Sleepga", "Volt Strike", "Shock Squall", "Mewing Lullaby"}
    return MACCPetReady:contains(spell.english)
end


function pet_midcast(spell)
    if not isPetMove(spell) then
        return
    end
    equip(sets.pet.Midcast)
    -- TODO More Pet Ready Midcast Sets
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