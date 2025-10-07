--
-- DRK Lua by MigsDank
-- 

sets = {}

--
-- Weapon Sets
-- 
sets.weapons = {}
sets.weapons.List = {
    "Apoc", 
    "Montante",
    "Lycurgos",
    "Naegling",
    "Loxotic Mace",
    "Piercing",
}

sets.weapons["Montante"] = {
    main={ name="Montante +1", augments={'Path: A',}},
    sub="Utu Grip",
}

sets.weapons["Apoc"] = {
    main="Apocalypse",
    sub="Utu Grip",
}

sets.weapons["Lycurgos"] = {
    main="Lycurgos",
    sub="Utu Grip",
}

sets.weapons["Naegling"] = {
    main="Naegling",
    sub="Blurred Shield +1",
}

sets.weapons["Loxotic Mace"] = {
    main="Loxotic Mace +1",
    sub="Blurred Shield +1",
}

sets.weapons["Piercing"] = {
    main="Malevolence",
    sub="Blurred Shield +1",
}


-- Idle/DT Base Set
sets.idle = {}
sets.idle.Default = {
    -- DT: -2 
    ammo="Staunch Tathlum",
    -- DT: -7 
    head="Sakpata's Helm",
    -- DT: -10
    body="Sakpata's Plate",
    -- DT: -8 
    hands="Sakpata's Gauntlets",
    -- DT: -9
    legs="Sakpata's Cuisses",
    -- DT: -6
    feet="Sakpata's Leggings",
    -- MResist
    neck="Warder's Charm +1",
    -- DT -3, HP+10%
    waist="Plat. Mog. Belt",
    -- HP
    left_ear="Odnowa Earring +1",
    -- HP
    right_ear="Tuisto Earring",
    -- HP, DT: -4
    left_ring="Moonbeam Ring",
    -- Speed
    right_ring="Shneddick Ring",
    back={ name="Ankou's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
}

--
-- TP Sets
--
sets.tp = {}

sets.tp.List = {
    "Hybrid",
    "FullDT",
    "Default" 
}

sets.tp.Default = {
    ammo={ name="Coiste Bodhar", augments={'Path: A',}},
    head="Flam. Zucchetto +2",
    body="Sakpata's Plate",
    hands="Sakpata's Gauntlets",
    legs="Ig. Flanchard +3",
    feet="Flam. Gambieras +2",
    neck={ name="Abyssal Beads +1", augments={'Path: A',}},
    waist="Sailfi Belt +1",
    left_ear="Telos Earring",
    right_ear={ name="Schere Earring", augments={'Path: A',}},
    left_ring="Moonbeam Ring",
    right_ring="Chirich Ring",
    back={ name="Ankou's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
}

sets.tp.Hybrid = set_combine(sets.tp.Default, {
    -- DT: -2 
    ammo="Staunch Tathlum",
    -- DT: -7 
    head="Sakpata's Helm",
    -- DT: -10
    body="Sakpata's Plate",
    -- DT: -8 
    hands="Sakpata's Gauntlets",
    -- DBLATK?
    legs="Ig. Flanchard +3",
    -- DT: -6
    feet="Sakpata's Leggings",
})

sets.tp.FullDT = sets.idle.Default

--
-- WS Sets 
-- 
sets.ws = {}

-- WSD >>> ALL by default
sets.ws.Default = {
    -- WSD
    ammo="Oshasha's Treatise",
    -- WSD 6+
    head={ name="Nyame Helm", augments={'Path: B',}},
    -- WSD 5
    body="Ignominy Cuirass +3",
    -- WSD 6+
    hands={ name="Nyame Gauntlets", augments={'Path: B',}},
    -- WSD 10
    legs={ name="Fall. Flanchard +3", augments={'Enhances "Muted Soul" effect',}},
    -- WSD 5  TODO: Replace with EMPY
    feet={ name="Nyame Sollerets", augments={'Path: B',}},
    -- DBLATK/PDL
    neck={ name="Abyssal Beads +1", augments={'Path: A',}},
    -- 2ATK/3ATK
    waist="Sailfi Belt +1",
    -- WSD 10
    right_ring="Cornelia's Ring",
    -- TP+
    left_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
    -- WSD 2
    right_ear="Thrud Earring",
    -- WSD 10
    back={ name="Ankou's Mantle", augments={'VIT+20','Accuracy+20 Attack+20','STR+5','Weapon skill damage +10%','Phys. dmg. taken-10%',}},
}

sets.ws.MACC = set_combine(sets.ws.Default, {
    -- MAAC 40, WSD
    head={ name="Nyame Helm", augments={'Path: B',}},
    -- MAAC 40, WSD
    body={ name="Nyame Mail", augments={'Path: B',}},
    -- MAAC 40, WSD
    hands={ name="Nyame Gauntlets", augments={'Path: B',}},
    -- MAAC 40, WSD TODO: Replace with RELIC+4
    legs={ name="Nyame Flanchard", augments={'Path: B',}},
    -- MAAC 40, WSD
    feet={ name="Nyame Sollerets", augments={'Path: B',}},
    -- MAAC 6
    right_ear="Heathen's Earring",
    -- MAAC 7
    waist="Eschan Stone",
})
sets.ws["Shockwave"] = sets.ws.MACC         -- AOE Sleep
sets.ws["Herculean Slash"] = sets.ws.MACC   -- Paralyze
sets.ws["Armor Break"] = sets.ws.MACC       -- Defense Down

sets.ws.MultiHit = set_combine(sets.ws.Default, {
    -- DBL ATK
    ammo={ name="Coiste Bodhar", augments={'Path: A',}},
    -- 3ATK: 5
    head="Flam. Zucchetto +2",
    --- 2ATK: 8, PDL
    body="Sakpata's Plate",
    -- 2ATK: 6
    hands="Sakpata's Gauntlets",
    -- 2ATK: 10
    legs="Ig. Flanchard +3",
    -- 2ATK: 6
    feet="Flam. Gambieras +2",
    -- 2ATK/3ATK
    waist="Sailfi Belt +1",
    -- 2ATK
    right_ear="Brutal Earring",
})
sets.ws["Resolution"] = sets.ws.MultiHit

-- 
-- Job Abilities
-- 
sets.ja = {}
sets.ja["Dark Seal"] = {
    head={ name="Fall. Burgeonet +3", augments={'Enhances "Dark Seal" effect',}},
}
sets.ja["Nether Void"] = {
    head={ name="Fall. Burgeonet +3", augments={'Enhances "Dark Seal" effect',}},
    legs="Heath. Flanchard +1",
}
sets.ja["Blood Weapon"] = {
    body={ name="Fall. Cuirass +3", augments={'Enhances "Blood Weapon" effect',}},
}
sets.ja["Diabolic Eye"] = {
    hands={ name="Fall. Fin. Gaunt. +3", augments={'Enhances "Diabolic Eye" effect',}},
}
sets.ja["Souleater"] = {
    legs={ name="Fall. Flanchard +3", augments={'Enhances "Muted Soul" effect',}},
}


-- 
-- Spell Precast Sets
--
sets.precast = {} 

-- Fast Cast
sets.precast.FastCast = {
    head={ name="Fall. Burgeonet +3", augments={'Enhances "Dark Seal" effect',}},
    body={ name="Fall. Cuirass +3", augments={'Enhances "Blood Weapon" effect',}},
    hands={ name="Leyline Gloves", augments={'Accuracy+6','Mag. Acc.+2','"Mag.Atk.Bns."+6',}},
    legs={ name="Eschite Cuisses", augments={'"Mag.Atk.Bns."+25','"Conserve MP"+6','"Fast Cast"+5',}},
    right_ring="Kishar Ring",
    left_ear="Malignance Earring",
    right_ear="Loquac. Earring",
}



-- 
-- Spell Midcast Sets
-- 
sets.midcast = {}

-- DRK Magic Skill > Magic ACC > Magic ATK Bonus
sets.midcast.Default = {
    ammo="Staunch Tathlum",
    head={ name="Fall. Burgeonet +3", augments={'Enhances "Dark Seal" effect',}},
    body={ name="Fall. Cuirass +3", augments={'Enhances "Blood Weapon" effect',}},
    hands={ name="Fall. Fin. Gaunt. +3", augments={'Enhances "Diabolic Eye" effect',}},
    legs={ name="Eschite Cuisses", augments={'"Mag.Atk.Bns."+25','"Conserve MP"+6','"Fast Cast"+5',}},
    neck="Incanter's Torque",
    feet="Ratri Sollerets",
    left_ear="Mani Earring",
    right_ear="Ethereal Earring",
    left_ring="Evanescence Ring",
    right_ring="Kishar Ring",
    back={ name="Niht Mantle", augments={'Attack+6','Dark magic skill +6','"Drain" and "Aspir" potency +25',}},
}

-- DRK Magic Skill >> All 
sets.midcast["Endark II"] = {
    ammo="Staunch Tathlum",
    -- TODO: Artifact Head
    body={ name="Carm. Scale Mail", augments={'Attack+15','"Mag.Atk.Bns."+10','"Dbl.Atk."+2',}},
    hands={ name="Fall. Fin. Gaunt. +3", augments={'Enhances "Diabolic Eye" effect',}},
    legs="Heath. Flanchard +1",
    feet="Ratri Sollerets",
    neck="Incanter's Torque",
    left_ear="Mani Earring",
    left_ring="Evanescence Ring",
    back={ name="Niht Mantle", augments={'Attack+6','Dark magic skill +6','"Drain" and "Aspir" potency +25',}},
}

-- Maximize Drain Bonus / DRK Magic Acc
sets.midcast["Drain II"] = {
    ammo="Staunch Tathlum",
    head={ name="Fall. Burgeonet +3", augments={'Enhances "Dark Seal" effect',}},
    body={ name="Carm. Scale Mail", augments={'Attack+15','"Mag.Atk.Bns."+10','"Dbl.Atk."+2',}},
    hands={ name="Fall. Fin. Gaunt. +3", augments={'Enhances "Diabolic Eye" effect',}},
    legs="Heath. Flanchard +1",
    neck="Incanter's Torque",
    feet="Ratri Sollerets",
    left_ear="Mani Earring",
    right_ear="Ethereal Earring",
    left_ring="Evanescence Ring",
    right_ring="Archon Ring",
    back={ name="Niht Mantle", augments={'Attack+6','Dark magic skill +6','"Drain" and "Aspir" potency +25',}},
}
sets.midcast["Drain III"] = sets.precast["Drain II"]

sets.midcast["Stun"] = {
    head={ name="Fall. Burgeonet +3", augments={'Enhances "Dark Seal" effect',}},
    body={ name="Fall. Cuirass +3", augments={'Enhances "Blood Weapon" effect',}},
    hands={ name="Fall. Fin. Gaunt. +3", augments={'Enhances "Diabolic Eye" effect',}},
    legs={ name="Nyame Flanchard", augments={'Path: B',}},
    feet="Ratri Sollerets",
    waist="Eschan Stone",
    right_ring="Kishar Ring",
    left_ear="Malignance Earring",
    -- TODO Ambu Magic Acc Cape
}

-- Try to maximize HP and DreadSpikes Bonus
sets.midcast["Dread Spikes"] = {
    ammo="Staunch Tathlum",
    head="Ratri Sallet",
    body="Heath. Cuirass +1",
    hands="Ratri Gadlings",
    legs="Ratri Cuisses",
    feet="Ratri Sollerets",
    neck="Incanter's Torque",
    waist="Plat. Mog. Belt",
    left_ear="Eabani Earring",
    right_ear="Tuisto Earring",
    left_ring="Moonbeam Ring",
    right_ring="Archon Ring",
    back={ name="Niht Mantle", augments={'Attack+6','Dark magic skill +6','"Drain" and "Aspir" potency +25',}},
}

-- Enfeebling Magic: MACC > Skill > Potency
sets.midcast.Enfeebling = {
    head={ name="Nyame Helm", augments={'Path: B',}},
    body={ name="Fall. Cuirass +3", augments={'Enhances "Blood Weapon" effect',}},
    hands={ name="Fall. Fin. Gaunt. +3", augments={'Enhances "Diabolic Eye" effect',}},
    legs={ name="Nyame Flanchard", augments={'Path: B',}},
    feet={ name="Nyame Sollerets", augments={'Path: B',}},
    neck="Sibyl Scarf",
    right_ring="Kishar Ring",
    left_ear="Malignance Earring",
    waist="Eschan Stone",
    neck="Incanter's Torque",
    -- TODO Ambu Magic Acc Cape
}

-- ELemental magic: MACC = MAB
sets.midcast.Nuking = {
    head={ name="Nyame Helm", augments={'Path: B',}},
    body={ name="Fall. Cuirass +3", augments={'Enhances "Blood Weapon" effect',}},
    hands={ name="Fall. Fin. Gaunt. +3", augments={'Enhances "Diabolic Eye" effect',}},
    legs={ name="Nyame Flanchard", augments={'Path: B',}},
    feet={ name="Nyame Sollerets", augments={'Path: B',}},
    neck="Sibyl Scarf",
    right_ring="Kishar Ring",
    left_ear="Malignance Earring",
    waist="Eschan Stone",

}