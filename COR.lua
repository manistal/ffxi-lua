--
-- DRK Lua by MigsDank
-- 

-- Gearswap Spec: https://docs.windower.net/addons/gearswap/reference/

COR_STYLE_SET = 60
COR_MACRO_BOOK = 3

-- 
-- Main Entry Point 
-- 
function get_sets() 
	-- Sets Include
	-- Requires sets{WeaponSkill: {}, TP: {}, Idle: {}, Precast: {}, Midcast:{}}
    include('common.lua')
	include('COR_sets.lua')
	set_macro(COR_MACRO_BOOK, 1)
	set_style(COR_STYLE_SET)
end

--
-- Dynamic Set Funcs 
-- 
function equip_base_set(status) 
    -- Weapon Sets
    equip(sets.weapons.Current)

    -- TP/Engaged Sets (Glass cannon TP vs Tanky TP)
    if status == 'Engaged' then 
        if player.hpp <= 75 then 
            equip(sets.tp.Hybrid)
        elseif player.hpp <= 50 then 
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

    -- Corsair Rolls
	if spell.type == "CorsairRoll" or spell.english == "Double-Up" then
		equip(sets.ja.PhantomRoll)
		-- Roll-specific gear
        if sets.ja[spell.english] then
            equip(sets.ja[spell.english])
		end
	end

    -- Job Abilities are either specific or none
    if spell.type == "JobAbility" then
		if sets.ja[spell.english] then 
			equip(sets.ja[spell.english])
        end
    end

    -- Quick Draw
	Quick_draw = S{
		'Fire Shot', 'Ice Shot', 'Wind Shot', 'Earth Shot', 'Thunder Shot', 'Water Shot', 'Light Shot', 'Dark Shot'}
	if Quick_draw:contains(spell.english) then
        equip(sets.ja["Quick Draw"])
    end

    -- Equip Specific Sets Last
    if sets.precast[spell.english] then
        equip(sets.precast[spell.english])
    end
end


function midcast(spell)
    -- TODO Need a Fastcast set
	--if (spell.type == 'WhiteMagic' or spell.type == 'BlackMagic' or spell.type == 'BlueMagic' or spell.type == 'Ninjutsu') then
	--	equip(sets.midcast.FastCast)
	--end

    -- Equip Specific Sets Last
    if sets.midcast[spell.english] then
        equip(sets.midcast[spell.english])
    end

    -- Overrides for Tripleshot TODO
	--if spell.english == "Ranged" and buffactive['Triple Shot'] then
	--	if buffactive['Triple Shot'] then
	--		equip(set_combine(sets.ra.Default,sets.ra.TripleShot))
    --  end
    --end

end

function aftercast(spell)
    equip_base_set(player.status)
end


function status_change(new,old)
    equip_base_set(new)
end
