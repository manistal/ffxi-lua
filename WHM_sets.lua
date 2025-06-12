--
-- WHM Lua by MigsDank
-- 

sets = {}

--[[
TODO List
Empyrean +2 Legs > Body > Helm > Feet > Hands
Valkrum UNM Regal Pumps +5% Fast Cast
Orison Neck Abyssea
Kaykaus Boots 
]]


--[[
JSE
Artifact: (Enfeeble/MACC)
    head="Theophany Cap +2", 
    body="Theo. Bliaut +2", -- Curaga
    hands="Theophany Mitts +2", -- Cure II
    legs="Th. Pantaloons +2", -- Cursna / Regen
    feet="Theo. Duckbills +2", -- Enh Duration

Empyrean:
    head="Ebers Cap +2", -- FC
    body="Ebers Bliaut +2", -- Refresh, Solace
    hands="Ebers Mitts +1", -- DT / Divine Caress
    legs="Ebers Pant. +2", -- CURE
    feet="Ebers Duckbills +1", -- DT / MEVA

]]

--
-- Weapon Sets
-- 
sets.weapons = {}
sets.weapons.List = {
    "QuellerRod",
    "KajaRod",
}

sets.weapons["QuellerRod"] = {
    main="Queller Rod",
    sub="Diamond Aspis",
}

sets.weapons["KajaRod"] = {
    main="Kaja Rod",
    sub="Diamond Aspis",
}

-- Idle/DT Base Set
sets.idle = {}
sets.idle.List = {
    "Default",
    "Refresh",
}

-- 38 Nyame, 39 Empy
-- 15 Accessories
sets.idle.Default = {
    -- 2% DT
    ammo="Staunch Tathlum",
    -- 7 DT
    head={ name="Nyame Helm", augments={'Path: B',}},
    -- Refresh
    body="Ebers Bliaut +2", 
    -- TODO Empty Hands (-10)
    -- 7 DT
    hands={ name="Nyame Gauntlets", augments={'Path: B',}},
    -- 12 DT
    legs="Ebers Pant. +2", 
    -- TODO Empty Feet (-10)
    -- 7 DT
    feet="Inyan. Crackows +2",
    -- 6 DT
    neck={ name="Loricate Torque +1", augments={'Path: A',}},
    -- MEVA
    waist="Carrier's Sash",
    -- HP
    left_ear="Eabani Earring",
    -- TODO NEED BETTER EAR
    right_ear="Odnowa Earring +1",
    -- 7 DT
    left_ring="Vocane Ring",
    -- Refresh
    right_ring="Inyanga Ring",
    -- 10 PDT
    back={ name="Alaunus's Cape", augments={'MND+20','Eva.+20 /Mag. Eva.+20','MND+10','"Fast Cast"+10','Phys. dmg. taken-10%',}},
}

-- Total: ~25DT, 7 Refresh
sets.idle.Refresh = set_combine(sets.idle.Default, {
    -- Refresh +1
    head="Inyanga Tiara +2",
    -- Refresh +3
    body="Ebers Bliaut +2", 
    -- Refresh +1
    hands="Inyan. Dastanas +2",
    -- Refresh +1
    legs="Assid. Pants +1",
    -- Refresh +1
    feet="Inyan. Crackows +2",
    -- MEVA
    neck="Warder's Charm +1",
    -- MEVA
    waist="Carrier's Sash",
    -- Refresh
    right_ring="Inyanga Ring",
    -- MEVA
    back={ name="Alaunus's Cape", augments={'MND+20','Eva.+20 /Mag. Eva.+20','MND+10','"Fast Cast"+10','Phys. dmg. taken-10%',}},
})

-- 
-- Job Abilities
-- 
sets.ja = {}

sets.ja["Divine Caress"] = {
    hands="Ebers Mitts +1", -- Divine Caress
}

-- TODO RELIC



-- 
-- Spell Precast Sets
--
sets.precast = {} 

--[[
Current = 60% Fast Cast (71% cast time)
Options:
Empy Neck = 5
Regal Pumps (Valkrum UNM) = 5% (+2)
Wistful Belt = 3
JSE Neck+1 with RP = 8
]]

-- Fast Cast
sets.precast.FastCast = {
    -- 7 Cure Speed
    main={ name="Queller Rod", augments={'Healing magic skill +15','"Cure" potency +10%','"Cure" spellcasting time -7%',}},
    -- 10 FC
    head="Ebers Cap +2", 
    -- 14 FC
    body="Inyanga Jubbah +2",
    -- 7 FC, 4 Cure Speed
    hands={ name="Gende. Gages +1", augments={'Phys. dmg. taken -4%','Magic dmg. taken -2%','"Cure" spellcasting time -4%',}},
    -- 6 FC
    legs="Aya. Cosciales +2",
    -- 3 FC
    feet={ name="Kaykaus Boots", augments={'Mag. Acc.+15','"Cure" potency +5%','"Fast Cast"+3',}},
    -- 4 FC
    right_ring="Kishar Ring",
    -- 4 FC
    left_ear="Malignance Earring",
    -- 2 FC
    right_ear="Loquac. Earring",
    -- 10 FC
    back={ name="Alaunus's Cape", augments={'MND+20','Eva.+20 /Mag. Eva.+20','MND+10','"Fast Cast"+10','Phys. dmg. taken-10%',}},
}

-- 
-- Spell Midcast Sets
-- 
sets.midcast = {}

-- Cure/Healing/COnserveMP
-- Total: Cure I: 49, Cure II: 4
sets.midcast.Cure = {
    -- Cure I: 10, Cure II: 2
    main={ name="Queller Rod", augments={'Healing magic skill +15','"Cure" potency +10%','"Cure" spellcasting time -7%',}},
    -- Conserve MP: 4
    sub="Thuellaic Ecu +1",
    -- Cure I: 19
    head="Ebers Cap +2",
    -- Solace
    body="Ebers Bliaut +2",
    -- Cure II: 2
    hands="Theophany Mitts +2",
    -- Cure -> MP
    legs="Ebers Pant. +2",
    -- Cure I: 15, Conserve MP: 6
    feet={ name="Kaykaus Boots", augments={'Mag. Acc.+15','"Cure" potency +5%','"Fast Cast"+3',}},
    -- Cure I: 5, Conserve MP: 2
    right_ear="Mendi. Earring",
    -- Solace
    back={ name="Alaunus's Cape", augments={'MND+20','Eva.+20 /Mag. Eva.+20','MND+10','"Fast Cast"+10','Phys. dmg. taken-10%',}},
}


sets.midcast.Curaga = set_combine(sets.midcast.Cure, {
    -- Cure II: 3
    body="Theo. Bliaut +2", -- Curaga
})

-- Healing/Status Removal
sets.midcast.StatusRemoval = {
    -- TODO JSE NECK
    head="Ebers Cap +2", -- Divine Veil
    hands="Ebers Mitts +1", -- DT / Divine Caress
    legs="Ebers Pant. +2", -- CURE
}

-- TODO: Vanya Head, Fanatics Gloves, Vanya Feet
sets.midcast.Cursna = {
    -- Healing Magiuc: 15
    main={ name="Queller Rod", augments={'Healing magic skill +15','"Cure" potency +10%','"Cure" spellcasting time -7%',}},
    -- Healing Magic: 29
    body="Ebers Bliaut +2",
    -- Cursna: 10
    neck="Malison Medallion",
    -- Cursna: 10, Healing Magic: 7
    left_ring="Ephedra Ring",
    -- Cursna: 10, Healing Magic: 7
    right_ring="Ephedra Ring",
    -- Cursna: 17
    legs="Th. Pantaloons +2", -- Cursna / Regen
    -- Cursna: 25
    back={ name="Alaunus's Cape", augments={'MND+20','Eva.+20 /Mag. Eva.+20','MND+10','"Fast Cast"+10','Phys. dmg. taken-10%',}},
}

-- Enhancing
-- TODO Embla Sash, Enhancing Skill Earring, Telchine
sets.midcast.Enhancing = {
    -- Enhancing Skill: 19, Duration 5
    feet="Theo. Duckbills +2", -- Enh Duration
}

-- TODO RELIC LEGS
sets.midcast.BarSpell = {
    head="Ebers Cap +2", -- FC
    body="Ebers Bliaut +2", -- Refresh, Solace
    hands="Ebers Mitts +1", -- DT / Divine Caress
    legs="Ebers Pant. +2", -- CURE
    feet="Ebers Duckbills +1", -- DT / MEVA
}

sets.midcast.Regen = {
    head="Inyan. Tiara +2",
    -- TODO RELIC BODY
    hands="Ebers Mitts +1", -- DT / Divine Caress
    legs="Th. Pantaloons +2", -- Cursna / Regen
    -- TODO BUNZI
}

-- Enfeebling
sets.midcast.Enfeebling = {
    main="Kaja Rod",
    head="Theophany Cap +2", -- Enfeeble/MACC
    body="Theo. Bliaut +2", -- Enfeeble/MACC
    hands="Theophany Mitts +2", -- Enfeeble/MACC
    legs="Th. Pantaloons +2", -- Enfeeble/MACC
    feet="Theo. Duckbills +2", -- Enfeeble/MACC
    right_ring="Kishar Ring", -- Enfeeble Duration
}

--
-- TP Sets
--
sets.tp = {}

sets.tp.List = {
    "Default", 
}

sets.tp.Default = {
}

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
