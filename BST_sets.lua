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
    -- "Naegling",
    -- "Piercing",
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
    -- DT / SIRD
    ammo="Staunch Tathlum +1",
    -- DT / MEVA
    head={ name="Nyame Helm", augments={'Path: B',}},
    -- DT / MEVA
    body={ name="Nyame Mail", augments={'Path: B',}},
    -- DT / MEVA
    hands={ name="Nyame Gauntlets", augments={'Path: B',}},
    -- DT / MEVA
    legs={ name="Nyame Flanchard", augments={'Path: B',}},
    -- DT / MEVA
    feet={ name="Nyame Sollerets", augments={'Path: B',}},
    -- MDEF
    neck="Warder's Charm +1",
    -- DT -3
    waist="Plat. Mog. Belt",
    -- DT / HP
    left_ear="Alabaster Earring",
    -- HP
    right_ear="Tuisto Earring",
    -- DT
    left_ring="Murky Ring",
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
}

sets.tp.Hybrid = {
    ammo={ name="Coiste Bodhar", augments={'Path: A',}},
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
    -- DBATK/TP
    left_ear="Sherida Earring",
    -- DBLATK / ACC
    right_ear={ name="Nukumi Earring +1", augments={'System: 1 ID: 1676 Val: 0','Accuracy+12','Mag. Acc.+12','Pet: "Dbl. Atk."+6',}},
    -- 10 DT
    left_ring="Murky Ring",
    -- ACC / STP
    right_ring="Moonbeam Ring",
    -- MEVA
    back="Null Shawl",
} 


sets.tp.FullDT = sets.idle.Default

--
-- WS Sets 
-- 
sets.ws = {}

-- WSD >>> ALL by default
sets.ws.Default = {
    -- ATK/DBLATK
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
    -- TODO AMBU CAPE
}

-- 
-- Job Abilities
-- 
sets.ja = {}

sets.ja["Killer Instinct"] = {
    sub="Diamond Aspis",
    -- TODO Relic Head
}

sets.ja["Call Beast"] = {
    -- TODO Relic Gloves
    -- TODO Delay Gear
}

sets.ja["Bestial Loyalty"] = sets.ja["Call Beast"]

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


-- 
-- Pet Sets
-- 
sets.pet = {}

sets.pet.Precast = {
    legs="Gleti's Breeches",
}

sets.pet.Midcast = {
    -- ACC / MACC
    head={ name="Nyame Helm", augments={'Path: B',}},
    -- ACC / MACC
    body={ name="Nyame Mail", augments={'Path: B',}},
    -- ACC / MACC
    hands={ name="Nyame Gauntlets", augments={'Path: B',}},
    -- ACC / MACC
    legs={ name="Nyame Flanchard", augments={'Path: B',}},
    -- ACC / MACC / Level
    feet="Gleti's Boots",
    -- ACC / MACC
    left_ear="Alabaster Earring",
    -- ACC / MACC / Level
    right_ear={ name="Nukumi Earring +1", augments={'System: 1 ID: 1676 Val: 0','Accuracy+12','Mag. Acc.+12','Pet: "Dbl. Atk."+6',}},
    -- ACC / MACC
    left_ring="Murky Ring",
    -- DBLATK
    neck="Shulmanu Collar",
    -- TODO AMBUC CAPE
    -- TODO EMPY GLOVES
    -- TODO Belt (Klouskap?)
    -- TODO Hespiidae
}
