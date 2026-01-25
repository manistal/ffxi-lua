--
-- DRK Lua by MigsDank
-- 

sets = {}

--
-- Weapon Sets
-- 
sets.weapons = {}
sets.weapons.List = {
    "Daggers Main",
    "Savage Spam",
    "DI",
}

sets.weapons["Savage Spam"] = {
    main="Naegling",
    sub={ name="Gleti's Knife", augments={'Path: A',}},
}

sets.weapons["Daggers Main"] = { 
    main="Tauret",
    sub={ name="Gleti's Knife", augments={'Path: A',}},
}

sets.weapons["DI"] = { 
    main="Voluspa Knife",
    sub={ name="Gleti's Knife", augments={'Path: A',}},
}


sets.TH = {
    hands={ name="Plun. Armlets +1", augments={'Enhances "Perfect Dodge" effect',}},
    ammo="Per. Lucky Egg",
}

-- Idle/DT Base Set
-- DT == 50
-- MEva >= Eva = Regen
-- Current DT: 51
sets.idle = {}

sets.idle.List = {
    "Default", 
    "Regen"
}

sets.idle.Default = {
    ammo="Yamarang",
    -- DT: -7
    head={ name="Nyame Helm", augments={'Path: B',}},
    -- DT: -9
    body={ name="Nyame Mail", augments={'Path: B',}},
    --DT: -7
    hands={ name="Nyame Gauntlets", augments={'Path: B',}},
    -- DT: -8
    legs={ name="Nyame Flanchard", augments={'Path: B',}},
    -- DT: -7
    feet={ name="Nyame Sollerets", augments={'Path: B',}},
    -- MDEF
    neck="Warder's Charm +1",
    -- DT -3
    waist="Plat. Mog. Belt",
    -- DT: -10
    left_ring="Murky Ring",
    right_ring="Shneddick Ring",
    left_ear="Alabaster Earring",
    right_ear="Suppanomimi",
    back="Null Shawl",
}

sets.idle.Regen = set_combine({
    left_ring="Chirich Ring",
    right_ring="Chirich Ring",
    right_ear="Infused Earring",
})

--
-- TP Sets
--
sets.tp = {}

sets.tp.List = {
    "Hybrid",
    "TreasureHunter",
    "FullDT",
}

-- DW > 11 for /nin 
-- DW > 21 for /nin, > 9 for haste samba
-- Haste = 25
-- TA > STP = DA > 
-- Currently 27 Haste, 10 DW
sets.tp.Hybrid = {
    ammo="Yamarang",
    -- 7 DT
    head="Malignance Chapeau",
    -- 9 DT
    body="Malignance Tabard",
    -- 5 DT 
    hands="Malignance Gloves",
    -- 12 DT
    legs="Malignance Tights",
    -- 7 DT
    feet="Malignance Boots",
    -- Triple ATK
    waist="Sailfi Belt +1",
    -- ACC / 5 DT
    neck="Null Loop",
    -- DW
    left_ear="Suppanomimi",
    -- TP
    right_ear="Sherida Earring",
    -- 10 DT
    left_ring="Murky Ring",
    -- ACC / STP
    right_ring="Chirich Ring",
    -- MEVA
    back="Null Shawl",
} 

sets.tp.TreasureHunter = set_combine(sets.tp.Hybrid, {
    -- TH 1
    ammo="Per. Lucky Egg",
    -- TH 3
    hands={ name="Plun. Armlets +1", augments={'Enhances "Perfect Dodge" effect',}},
    -- More DT
    left_ear="Alabaster Earring",
})

sets.tp.FullDT = sets.idle.Default



-- 
-- Precast Sets
--
sets.precast = {} 

sets.precast.FastCast = {
    hands={ name="Leyline Gloves", augments={'Accuracy+5','"Mag.Atk.Bns."+7','"Fast Cast"+1',}},
    right_ear="Loquac. Earring",
}

sets.precast.Ranged = {
    ranged="Antitail",
}


-- 
-- Midcast Sets
-- 
sets.midcast = {}


--
-- WS Sets 
-- 
sets.ws = {}

-- TP Bonus > WSD > Attack = Accuracy
sets.ws.Default = {
    -- WSD
    ammo="Oshasha's Treatise",
    head={ name="Nyame Helm", augments={'Path: B',}},
    body={ name="Nyame Mail", augments={'Path: B',}},
    hands={ name="Nyame Gauntlets", augments={'Path: B',}},
    legs={ name="Nyame Flanchard", augments={'Path: B',}},
    feet={ name="Nyame Sollerets", augments={'Path: B',}},
    -- TP+250
    right_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
    -- PDL/Stats
    left_ring="Ephramad's Ring",
    -- WSD: +2
    left_ear="Ishvara Earring",
}


-- 
-- Job Ability Sets
-- 
sets.ja = {}

sets.ja.Default = sets.TH

sets.ja["Perfect Dodge"] = {
    hands={ name="Plun. Armlets +1", augments={'Enhances "Perfect Dodge" effect',}},
}
