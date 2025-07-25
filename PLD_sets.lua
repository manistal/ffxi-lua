--
-- DRK Lua by MigsDank
-- 

sets = {}

--
-- Weapon Sets
-- 
sets.weapons = {}
sets.weapons.List = {
    "Sakpata",
    "Naegling",
    "Loxotic Mace",
    "Piercing",
}

sets.weapons["Sakpata"] = {
    main="Sakpata's Sword",
    sub="Priwen",
}

sets.weapons["Naegling"] = {
    main="Naegling",
    sub="Diamond Aspis",
    --sub="Blurred Shield +1",
}

sets.weapons["Loxotic Mace"] = {
    main="Loxotic Mace +1",
    sub="Diamond Aspis",
    --sub="Blurred Shield +1",
}

sets.weapons["Piercing"] = {
    main="Malevolence",
    sub="Diamond Aspis",
    --sub="Blurred Shield +1",
}

-- Idle/DT Base Set
sets.idle = {}
sets.idle.Default = {
    ammo="Staunch Tathlum",
    -- TODO EMPY HELM
    head="Sakpata's Helm",
    body={ name="Sakpata's Plate", augments={'Path: A',}},
    hands={ name="Sakpata's Gauntlets", augments={'Path: A',}},
    --TODO EMPY LEGS
    legs="Sakpata's Cuisses",
    feet="Sakpata's Leggings",
    neck={ name="Unmoving Collar +1", augments={'Path: A',}},
    waist="Carrier's Sash",
    -- TODO Accesories? 
    left_ear="Ethereal Earring",
    right_ear="Odnowa Earring +1",
    left_ring="Moonbeam Ring",
    right_ring="Chirich Ring",
    back={ name="Rudianos's Mantle", augments={'VIT+20','Eva.+20 /Mag. Eva.+20','Mag. Evasion+10','Enmity+10','Phys. dmg. taken-10%',}},
}

--
-- TP Sets
--
sets.tp = {}

sets.tp.List = {
    "Default", 
}

sets.tp.Default = sets.idle.Default
--
-- WS Sets 
-- 
sets.ws = {}
sets.ws.Default = {
    head={ name="Nyame Helm", augments={'Path: B',}},
    body={ name="Nyame Mail", augments={'Path: B',}},
    hands={ name="Nyame Gauntlets", augments={'Path: B',}},
    legs={ name="Nyame Flanchard", augments={'Path: B',}},
    feet={ name="Nyame Sollerets", augments={'Path: B',}},
    -- TP+250
    right_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
    -- WSD: +2
    left_ear="Ishvara Earring",
}

-- 
-- Job Abilities
-- 
sets.ja = {}
--sub="Diamond Aspis",

-- 
-- Spell Precast Sets
--
sets.precast = {} 

-- Fast Cast
sets.precast.FastCast = {
    -- Fast Cast 8
    head="Sakpata's Helm",
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

-- SIRD 80, Enmity 39
sets.midcast.SIRDEnmity = {
    -- SIRD 10
    ammo="Staunch Tathlum",
    -- Enmity 7, SIRD 15
    head={ name="Eschite Helm", augments={'Mag. Evasion+15','Spell interruption rate down +15%','Enmity+7',}},
    -- Enmity 7, SIRD 15
    body={ name="Eschite Breast.", augments={'Mag. Evasion+15','Spell interruption rate down +15%','Enmity+7',}},
    -- TODO Founders Greaves - SIRD 30
    -- SIRD 20, Enmity 5
    feet="Odyssean Greaves",
    -- SIRD 10
    waist="Audumbla Sash",
    -- SIRD 10, Enmity 10 
    neck="Moonbeam Necklace",
    -- TODO Knightly Earring - Enmity 10, SIRD 9
    -- Enmity 10 
    back={ name="Rudianos's Mantle", augments={'VIT+20','Eva.+20 /Mag. Eva.+20','Mag. Evasion+10','Enmity+10','Phys. dmg. taken-10%',}},
}

sets.midcast.Cure = set_combine(sets.midcast.SIRDEnmity, {
    -- Cure I: 7
    feet="Odyssean Greaves",
    -- Cure I: 5, Conserve MP: 2
    right_ear="Mendi. Earring",
    -- Cure I: 1, Cure II: 1
    left_ring="Naji's Loop",
})

sets.midcast.Phalanx = set_combine(sets.midcast.SIRDEnmity, {
    main="Sakpata's Sword",
    sub="Priwen",
    head={ name="Yorium Barbuta", augments={'Spell interruption rate down -9%','Phalanx +2',}},
    body={ name="Yorium Cuirass", augments={'Spell interruption rate down -6%','Phalanx +3',}},
    -- TODO SOUV HANDS
    legs={ name="Sakpata's Cuisses", augments={'Path: A',}},
    -- TODO SOUV FEET
    neck="Incanter's Torque",
})




