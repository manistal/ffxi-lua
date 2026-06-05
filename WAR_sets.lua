--
-- DRK Lua by MigsDank
-- 

sets = {}

--
-- Weapon Sets
-- 
sets.weapons = {}
sets.weapons.List = {
    "Naegling",
    "Loxotic Mace",
    "ShiningOne",
    "Lycurgos",
}

sets.weapons["Lycurgos"] = {
    main="Lycurgos",
    sub="Utu Grip",
}

sets.weapons["ShiningOne"] = {
    main="Shining One" ,
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



-- Idle/DT Base Set
sets.idle = {}
sets.idle.Default = {
    -- DT: -2 
    ammo="Staunch Tathlum +1",
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
    -- HP, DT: -5
    left_ear="Alabaster Earring",
    -- HP
    right_ear="Tuisto Earring",
    -- HP, DT: -4
    left_ring="Moonlight Ring",
    -- Speed
    right_ring="Shneddick Ring",
    -- MEVA
    back="Null Shawl",
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
    -- 3 DA
    ammo={ name="Coiste Bodhar", augments={'Path: A',}},
    -- TODO: Empy Helm 
    -- 5 DA
    head="Sakpata's Helm",
    -- 8 DA
    body="Sakpata's Plate",
    -- 6 DA / STP
    hands="Sakpata's Gauntlets",
    -- 7 DA
    legs="Sakpata's Cuisses",
    -- 4 DA
    feet="Sakpata's Leggings",
    -- TODO JSE Neck
    neck="Republican Platinum Medal",
    -- 5 DA
    waist="Sailfi Belt +1",
    -- 6 DA
    left_ear={ name="Schere Earring", augments={'Path: A',}},
    -- 9 DA
    right_ear={ name="Boii Earring +2", augments={'System: 1 ID: 1676 Val: 0','Accuracy+16','Mag. Acc.+16','Crit.hit rate+6','STR+7 VIT+7',}},
    -- STP
    left_ring="Moonlight Ring",
    -- QA
    right_ring="Niqmaddu Ring",
    -- 10 DA (TODO AUGMENT)
    back={ name="Cichol's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Damage taken-5%',}},
}

sets.tp.Hybrid = set_combine(sets.tp.Default, {
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
    -- PDL/Stats
    left_ring="Ephramad's Ring",
    -- TP+
    left_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
    -- WSD 2
    right_ear="Thrud Earring",
    -- WSD 10
    back={ name="Cichol's Mantle", augments={'STR+20','Accuracy+20 Attack+20','Weapon skill damage +10%',}},
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

-- TODO: Add specific GAXE WS SETS

-- 
-- Job Abilities
-- 
sets.ja = {}

sets.ja.DiamondAspis = {
    main="Naegling",
    sub="Diamond Aspis",
}

-- TODO JSE

-- 
-- Spell Precast Sets
--
sets.precast = {} 

-- Fast Cast
sets.precast.FastCast = {
    hands={ name="Leyline Gloves", augments={'Accuracy+5','"Mag.Atk.Bns."+7','"Fast Cast"+1',}},
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
    ammo="Staunch Tathlum +1",
    legs={ name="Eschite Cuisses", augments={'"Mag.Atk.Bns."+25','"Conserve MP"+6','"Fast Cast"+5',}},
    right_ear="Ethereal Earring",
    left_ring="Evanescence Ring",
    right_ring="Kishar Ring",
}
