--
-- SMN Lua by MigsDank
-- 

-- Gearswap Spec: https://docs.windower.net/addons/gearswap/reference/

SMN_STYLE_SET = 81
SMN_MACRO_BOOK = 4

-- 
-- Main Entry Point 
-- 
function get_sets() 
	-- Sets Include
	-- Requires sets{WeaponSkill: {}, TP: {}, Idle: {}, Precast: {}, Midcast:{}}
    include('common.lua')
	include('SMN_sets.lua')
	set_macro(SMN_MACRO_BOOK, 1)
	set_style(SMN_STYLE_SET)
    
    -- Set defaults
    bind_toggles("~f1", "weapons")
    bind_toggles("~f2", "idle")
    bind_toggles("~f3", "perp")
end

--
-- Dynammic Set Funcs 
-- 
function equip_base_set(status,pet) 
    -- Idle Sets (Regen/DT)
    equip(sets.idle.Current)
    -- Weapon Sets
    equip(sets.weapons.Current)

    -- Idle Perp
    if pet ~= nil and pet.isvalid then
        equip(sets.perp.Current)
    end

    if status == 'Engaged' then 
        equip(sets.tp.Default)
    end
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
    if string.find(spell.type,'BloodPact') then
        equip(sets.bp.Precast)
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
    elseif spell and string.find(spell.type,'BloodPact') and not spell.interrupted then
        return
    else
        status_change(player.status)
    end
end

function isPhysicalBP(spell)
    -- Physical DBLATK BPs
    -- Ramuh: Volt Strike, Siren: Hysteric Assault & Garuda: Predator Claws
    physicalBPs = S{"Volt Strike", "Hysteric Assault", "Predator Claws", "Poison Nails"}
    return physicalBPs:contains(spell.english)
end

function isMagicAtkBP(spell)
    -- Merit/Magic BPs
    -- Thunderstorm, Meteor Strike, Heavenly Strike, Geocrush, Grand Fall, Wind Blade & Thunderspark.
    mabBPs = S{"Thunderstorm", "Meteor Strike", "Heavenly Strike", "Geocrush", "Grand Fall", "Wind Blade", "Thunderspark"}
    return mabBPs:contains(spell.english)
end

function isMACCBP(spell)
    -- BPs with Effects that Need to Land
    -- Sleepga, Volt Strike, Shock Squall, Mewing Lullaby
    maccBPs = S{"Sleepga", "Volt Strike", "Shock Squall", "Mewing Lullaby"}
    return maccBPs:contains(spell.english)
end


function pet_midcast(spell)
    if string.find(spell.type,'BloodPact') then
        if (spell.type=="BloodPactWard") then 
            equip(sets.bp.Ward) 
        elseif (spell.type=="BloodPactRage") then
            equip(sets.bp.Rage)
            if isPhysicalBP(spell) then
                equip(sets.bp.Physical)
            elseif isMagicAtkBP(spell) then 
                equip(sets.bp.MAB)
            elseif isMACCBP(spell) then 
                equip(sets.bp.MACC)
            end
        end
    end
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