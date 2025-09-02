--
-- DRK Lua by MigsDank
-- 

sets = {}

--
-- Weapon Sets
-- 
sets.weapons = {}
sets.weapons.List = {
    "Lycurgos",
    "Montante",
    "Naegling",
    "Loxotic Mace",
    "Piercing",
}

sets.weapons["Montante"] = {
    main={ name="Montante +1", augments={'Path: A',}},
    sub="Utu Grip",
}


sets.weapons["Lycurgos"] = {
    main="Lycurgos",
    sub="Utu Grip",
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
    -- Regen
    right_ring="Chirich Ring",
    -- TODO Finish Augmenting
    back={ name="Cichol's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10',}},
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
    legs="Sakpata's Cuisses",
    feet="Flam. Gambieras +2",
    -- TODO NECK
    waist="Ioskeha Belt",
    left_ear="Telos Earring",
    right_ear="Brutal Earring",
    left_ring="Moonbeam Ring",
    right_ring="Chirich Ring",
    -- TODO Finish Augmenting
    back={ name="Cichol's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10',}},
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
    -- WSD 10
    left_ring="Cornelia's Ring",
    -- TP+
    left_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
    -- WSD 2
    right_ear="Thrud Earring",
    -- TODO AMBU CAPE
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
})
sets.ws["Shockwave"] = sets.ws.MACC         -- AOE Sleep
sets.ws["Herculean Slash"] = sets.ws.MACC   -- Paralyze
sets.ws["Armor Break"] = sets.ws.MACC       -- Defense Down

sets.ws.MultiHit = set_combine(sets.ws.Default, {
    -- ATK/DBLATK
    ammo={ name="Coiste Bodhar", augments={'Path: A',}},
    -- 3ATK: 5
    head="Flam. Zucchetto +2",
    --- 2ATK: 8, PDL
    body="Sakpata's Plate",
    -- 2ATK: 6
    hands="Sakpata's Gauntlets",
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
