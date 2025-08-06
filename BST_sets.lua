--
-- DRK Lua by MigsDank
-- 

sets = {}

--
-- Weapon Sets
-- 
sets.weapons = {}
sets.weapons.List = {
    "AgwuShield",
    "AgwuDW",
    "Naegling",
    "Piercing",
}

sets.weapons["AgwuShield"] = {
    main="Agwu's Axe",
    sub="Diamond Aspis",

}

sets.weapons["AgwuDW"] = {
    main="Agwu's Axe",
    sub="Ikenga's Axe",
}

sets.weapons["Naegling"] = {
    main="Naegling",
    sub="Diamond Aspis",
}

sets.weapons["Piercing"] = {
    main="Malevolence",
    sub="Diamond Aspis",
}


-- Idle/DT Base Set
sets.idle = {}
sets.idle.Default = {
    ammo="Staunch Tathlum",
    head={ name="Nyame Helm", augments={'Path: B',}},
    body={ name="Nyame Mail", augments={'Path: B',}},
    hands={ name="Nyame Gauntlets", augments={'Path: B',}},
    legs={ name="Nyame Flanchard", augments={'Path: B',}},
    feet={ name="Nyame Sollerets", augments={'Path: B',}},
    neck={ name="Loricate Torque +1", augments={'Path: A',}},
    waist="Carrier's Sash",
    left_ear="Tuisto Earring",
    right_ear="Odnowa Earring +1",
    left_ring="Chirich Ring",
    right_ring="Moonbeam Ring",
    back="Artio's Mantle",
}

--
-- TP Sets
--
sets.tp = {}

sets.tp.List = {
    "FullDT",
    "Default" 
}

sets.tp.Default = {
    main="Agwu's Axe",
    sub="Diamond Aspis",
    ammo={ name="Coiste Bodhar", augments={'Path: A',}},
    head="Gleti's Mask",
    body="Gleti's Cuirass",
    hands="Gleti's Gauntlets",
    legs="Gleti's Breeches",
    feet="Gleti's Boots",
    neck="Shulmanu Collar",
    waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    left_ear="Telos Earring",
    right_ear="Sherida Earring",
    left_ring="Chirich Ring",
    right_ring="Moonbeam Ring",
    back="Artio's Mantle",
}

sets.tp.FullDT = sets.idle.Default

--
-- WS Sets 
-- 
sets.ws = {}

-- WSD >>> ALL by default
sets.ws.Default = {
    -- ATK/DBLATK
    ammo={ name="Coiste Bodhar", augments={'Path: A',}},
    -- WSD 6+
    head={ name="Nyame Helm", augments={'Path: B',}},
    -- WSD 6+
    body={ name="Nyame Mail", augments={'Path: B',}},
    -- WSD 6+
    hands={ name="Nyame Gauntlets", augments={'Path: B',}},
    -- WSD 10
    legs={ name="Nyame Flanchard", augments={'Path: B',}},
    -- WSD 5 
    feet={ name="Nyame Sollerets", augments={'Path: B',}},
    -- 2ATK/3ATK
    waist="Sailfi Belt +1",
    -- TP+
    left_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
    -- WSD 2
    right_ear="Thrud Earring",
    -- TODO AMBU CAPE
}

-- 
-- Job Abilities
-- 
sets.ja = {}
-- TODO DIAMOND ASPIS

-- 
-- Spell Precast Sets
--
sets.precast = {} 

-- Fast Cast
sets.precast.FastCast = {
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
    legs={ name="Eschite Cuisses", augments={'"Mag.Atk.Bns."+25','"Conserve MP"+6','"Fast Cast"+5',}},
    right_ear="Ethereal Earring",
    left_ring="Evanescence Ring",
    right_ring="Kishar Ring",
}
