--
-- DRK Lua by MigsDank
-- 

sets = {}

--
-- Weapon Sets
-- 
sets.weapons = {}
sets.weapons.List = {
    "Montante",
    "Savage Blade",
}

sets.weapons["Montante"] = {
    main={ name="Montante +1", augments={'Path: A',}},
    sub="Utu Grip",
}

sets.weapons["Savage Blade"] = {
    main="Naegling",

}



-- Idle/DT Base Set
sets.idle = {}
sets.idle.Default = {
    -- DT: -2 
    ammo="Staunch Tathlum",
    -- DT: -7 
    head="Sakpata's Helm",
    -- DT: -6
    neck={ name="Loricate Torque +1", augments={'Path: A',}},
    -- DT: -10
    body="Sakpata's Plate",
    -- DT: -8 
    hands="Sakpata's Gauntlets",
    -- DT: -9
    legs="Sakpata's Cuisses",
    -- DT: -6
    feet="Sakpata's Leggings",
    waist="Sailfi Belt +1",
    left_ear="Genmei Earring",
    right_ear="Odnowa Earring +1",
    -- DT: -7
    left_ring="Vocane Ring",
    right_ring="Sulevia's Ring",
    back={ name="Ankou's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
}

--
-- TP Sets
--
sets.tp = {}

sets.tp.List = {
    "Default", 
    "Hybrid",
    "FullDT"
}

sets.tp.Default = {
    ammo={ name="Coiste Bodhar", augments={'Path: A',}},
    head="Flam. Zucchetto +2",
    body="Sakpata's Plate",
    hands="Sakpata's Gauntlets",
    legs="Sakpata's Cuisses",
    feet="Flam. Gambieras +2",
    neck={ name="Abyssal Beads +1", augments={'Path: A',}},
    waist="Ioskeha Belt",
    left_ear="Brutal Earring",
    right_ear="Telos Earring",
    left_ring="Chirich Ring",
    right_ring="Sulevia's Ring",
    back={ name="Ankou's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
}

sets.tp.Hybrid = set_combine(sets.tp.Default, {
    -- DT: -2 
    ammo="Staunch Tathlum",
    -- DT: -7 
    head="Sakpata's Helm",
    -- DT: -6
    neck={ name="Loricate Torque +1", augments={'Path: A',}},
    -- DT: -10
    body="Sakpata's Plate",
    -- DT: -8 
    hands="Sakpata's Gauntlets",
    -- DT: -9
    legs="Sakpata's Cuisses",
    -- DT: -6
    feet="Sakpata's Leggings",
})

sets.tp.FullDT = sets.idle.Default

--
-- WS Sets 
-- 
sets.ws = {}
sets.ws.Default = {
    ammo={ name="Coiste Bodhar", augments={'Path: A',}},
    head={ name="Odyssean Helm", augments={'Accuracy+11','Weapon skill damage +3%','AGI+3',}},
    body="Ignominy Cuirass +2",
    hands={ name="Nyame Gauntlets", augments={'Path: B',}},
    legs={ name="Fall. Flanchard +3", augments={'Enhances "Muted Soul" effect',}},
    feet="Sulev. Leggings +2",
    neck={ name="Abyssal Beads +1", augments={'Path: A',}},
    waist="Sailfi Belt +1",
    left_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
    right_ear="Thrud Earring",
    back={ name="Ankou's Mantle", augments={'VIT+20','Accuracy+20 Attack+20','STR+5','Weapon skill damage +10%','Phys. dmg. taken-10%',}},
}

-- 
-- Job Abilities
-- 
sets.ja = {}
sets.ja["Dark Seal"] = {
    head={ name="Fall. Burgeonet +1", augments={'Enhances "Dark Seal" effect',}},
}
sets.ja["Nether Void"] = {
    head={ name="Fall. Burgeonet +1", augments={'Enhances "Dark Seal" effect',}},
    legs="Heath. Flanchard +1",
}


-- 
-- Spell Precast Sets
--
sets.precast = {} 

-- Fast Cast
sets.precast.FastCast = {
    head={ name="Fall. Burgeonet +1", augments={'Enhances "Dark Seal" effect',}},
    hands={ name="Leyline Gloves", augments={'Accuracy+6','Mag. Acc.+2','"Mag.Atk.Bns."+6',}},
    legs={ name="Eschite Cuisses", augments={'"Mag.Atk.Bns."+25','"Conserve MP"+6','"Fast Cast"+5',}},
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
    head={ name="Fall. Burgeonet +1", augments={'Enhances "Dark Seal" effect',}},
    body={ name="Carm. Scale Mail", augments={'Attack+15','"Mag.Atk.Bns."+10','"Dbl.Atk."+2',}},
    hands={ name="Fall. Fin. Gaunt. +1", augments={'Enhances "Diabolic Eye" effect',}},
    legs={ name="Eschite Cuisses", augments={'"Mag.Atk.Bns."+25','"Conserve MP"+6','"Fast Cast"+5',}},
    neck="Deceiver's Torque",
    feet="Ratri Sollerets",
    left_ear="Mani Earring",
    right_ear="Ethereal Earring",
    left_ring="Evanescence Ring",
    right_ring="Archon Ring",
    back={ name="Niht Mantle", augments={'Attack+6','Dark magic skill +6','"Drain" and "Aspir" potency +25',}},
}

-- DRK Magic Skill >> All 
sets.midcast["Endark II"] = sets.midcast.Default

-- Maximize Drain Bonus / DRK Magic Acc
sets.midcast["Drain II"] = {
    ammo="Staunch Tathlum",
    head={ name="Fall. Burgeonet +1", augments={'Enhances "Dark Seal" effect',}},
    body={ name="Carm. Scale Mail", augments={'Attack+15','"Mag.Atk.Bns."+10','"Dbl.Atk."+2',}},
    hands={ name="Fall. Fin. Gaunt. +1", augments={'Enhances "Diabolic Eye" effect',}},
    legs="Heath. Flanchard +1",
    neck="Deceiver's Torque",
    feet="Ratri Sollerets",
    left_ear="Mani Earring",
    right_ear="Ethereal Earring",
    left_ring="Evanescence Ring",
    right_ring="Archon Ring",
    back={ name="Niht Mantle", augments={'Attack+6','Dark magic skill +6','"Drain" and "Aspir" potency +25',}},
}
sets.midcast["Drain III"] = sets.precast["Drain II"]

-- Try to maximize HP and DreadSpikes Bonus
sets.midcast["Dread Spikes"] = {
    ammo="Staunch Tathlum",
    head="Ratri Sallet",
    body="Heath. Cuirass +1",
    hands="Ratri Gadlings",
    legs="Ratri Cuisses",
    feet="Ratri Sollerets",
    neck="Deceiver's Torque",
    waist="Sailfi Belt +1",
    left_ear="Eabani Earring",
    right_ear="Ethereal Earring",
    left_ring="Evanescence Ring",
    right_ring="Archon Ring",
    back={ name="Niht Mantle", augments={'Attack+6','Dark magic skill +6','"Drain" and "Aspir" potency +25',}},
}