--
-- WHM Lua by MigsDank
-- 

sets = {}

--[[
TODO List
Empyrean +2 Feet > Hands
Valkrum UNM Regal Pumps +5% Fast Cast
Orison Neck Abyssea
]]


--[[
JSE
Artifact: (Enfeeble/MACC)
    head="Theophany Cap +2", 
    body="Theo. Bliaut +2", -- Curaga
    hands="Theophany Mitts +2", -- Cure II
    legs="Th. Pantaloons +2", -- Cursna / Regen
    feet="Theo. Duckbills +2", -- Enh Duration

Relic:
    head={ name="Piety Cap", augments={'Enhances "Devotion" effect',}},
    body={ name="Piety Bliaut +1", augments={'Enhances "Benediction" effect',}},
    hands={ name="Piety Mitts", augments={'Enhances "Martyr" effect',}},
    legs={ name="Piety Pantaln. +2", augments={'Enhances "Afflatus Misery" effect',}},
    feet={ name="Piety Duckbills", augments={'Enhances "Afflatus Solace" effect',}},

Empyrean:
    head="Ebers Cap +2", -- FC
    body="Ebers Bliaut +2", -- Refresh, Solace
    hands="Ebers Mitts +2", -- DT / Divine Caress
    legs="Ebers Pant. +3", -- CURE
    feet="Ebers Duckbills +2", -- DT / MEVA

]]


--
-- Weapon Sets
-- 
sets.weapons = {}
sets.weapons.List = {
    "QuellerRod",
    "KajaRod",
    "BunziRod"
}

sets.weapons["QuellerRod"] = {
    main="Queller Rod",
    sub="Diamond Aspis",
}

sets.weapons["KajaRod"] = {
    main="Kaja Rod",
    sub="Diamond Aspis",
}

sets.weapons["BunziRod"] = {
    main="Bunzi's Rod",
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
--[[

    main="Bunzi's Rod",
    head={ name="Bunzi's Hat", augments={'Path: A',}},
    body="Bunzi's Robe",
    hands="Bunzi's Gloves",
    legs="Bunzi's Pants",
    feet={ name="Bunzi's Sabots", augments={'Path: A',}},
]]
sets.idle.Default = {
    -- 2% DT
    ammo="Staunch Tathlum",
    -- 7 DT
    head={ name="Bunzi's Hat", augments={'Path: A',}},
    -- Refresh
    body="Ebers Bliaut +2", 
    -- 8 DT
    hands="Bunzi's Gloves",
    -- 12 DT
    legs="Ebers Pant. +3", 
    -- 10 DT
    feet="Ebers Duckbills +2",
    -- MEVA
    neck="Warder's Charm +1",
    -- DT -3, HP+10%
    waist="Plat. Mog. Belt",
    -- HP
    left_ear="Eabani Earring",
    -- DT 5
    right_ear={ name="Ebers Earring +1", augments={'System: 1 ID: 1676 Val: 0','Accuracy+15','Mag. Acc.+15','Damage taken-5%',}},
    -- 10 DT
    left_ring="Murky Ring",
    -- Speed
    right_ring="Shneddick Ring",
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
    -- 6 DT
    neck={ name="Loricate Torque +1", augments={'Path: A',}},
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
    hands="Ebers Mitts +2", -- Divine Caress
}

sets.ja["Devotion"] ={
    head={ name="Piety Cap", augments={'Enhances "Devotion" effect',}},
}

sets.ja["Benediction"] = {
    body={ name="Piety Bliaut +1", augments={'Enhances "Benediction" effect',}},
}

sets.ja["Martyr"] = {
    hands={ name="Piety Mitts", augments={'Enhances "Martyr" effect',}},
}
-- TODO RELIC



-- 
-- Spell Precast Sets
--
sets.precast = {} 

--[[
Current = 76% Fast Cast (87% cast time)
Options:
Wistful Belt = 3
]]

-- Fast Cast
sets.precast.FastCast = {
    -- 7 Cure Speed
    main={ name="Queller Rod", augments={'Healing magic skill +15','"Cure" potency +10%','"Cure" spellcasting time -7%',}},
    -- 10 FC
    head="Ebers Cap +2", 
    -- ~5-8 FC
    neck={ name="Clr. Torque +1", augments={'Path: A',}},
    -- 14 FC
    body="Inyanga Jubbah +2",
    -- 7 FC, 4 Cure Speed
    hands={ name="Gende. Gages +1", augments={'Phys. dmg. taken -4%','Magic dmg. taken -2%','"Cure" spellcasting time -4%',}},
    -- 6 FC
    legs="Aya. Cosciales +2",
    -- 5 FC
    feet="Regal Pumps +1",
    -- 5 FC
    waist="Embla Sash",
    -- 1 FC
    left_ring="Naji's Loop",
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
-- Total: Cure I: 56, Cure II: 4
sets.midcast.Cure = {
    -- Cure I: 10, Cure II: 2
    main={ name="Queller Rod", augments={'Healing magic skill +15','"Cure" potency +10%','"Cure" spellcasting time -7%',}},
    -- Conserve MP: 4
    sub="Thuellaic Ecu +1",
    -- Cure I: 19
    head="Ebers Cap +2",
    -- Cure I: 7
    neck={ name="Clr. Torque +1", augments={'Path: A',}},
    -- Solace
    body="Ebers Bliaut +2",
    -- Cure II: 2
    hands="Theophany Mitts +2",
    -- Cure -> MP
    legs="Ebers Pant. +3",
    -- Cure I: 15, Conserve MP: 6
    feet={ name="Kaykaus Boots", augments={'Mag. Acc.+15','"Cure" potency +5%','"Fast Cast"+3',}},
    -- Cure I: 1, Cure II: 1
    left_ring="Naji's Loop",
    -- Cure I: 5, Conserve MP: 2
    left_ear="Mendi. Earring",
    -- Healing Magic 11
    right_ear={ name="Ebers Earring +1", augments={'System: 1 ID: 1676 Val: 0','Accuracy+15','Mag. Acc.+15','Damage taken-5%',}},
    -- Solace
    back={ name="Alaunus's Cape", augments={'MND+20','Eva.+20 /Mag. Eva.+20','MND+10','"Fast Cast"+10','Phys. dmg. taken-10%',}},
}


sets.midcast.Curaga = set_combine(sets.midcast.Cure, {
    -- Cure II: 3
    body="Theo. Bliaut +2", -- Curaga
})

-- Status Removal
----------------------
sets.midcast.StatusRemoval = {
    head="Ebers Cap +2", -- Divine Veil
    -- Erase+1
    neck={ name="Clr. Torque +1", augments={'Path: A',}},
    hands="Ebers Mitts +2", -- DT / Divine Caress
    legs="Ebers Pant. +3", -- CURE
}

sets.midcast.Cursna = set_combine(sets.midcast.StatusRemoval, {
    -- Healing Magiuc: 15
    main={ name="Queller Rod", augments={'Healing magic skill +15','"Cure" potency +10%','"Cure" spellcasting time -7%',}},
    -- Cursna / Conserve MP
    head={ name="Vanya Hood", augments={'MND+10','Spell interruption rate down +15%','"Conserve MP"+6',}},
    -- Healing Magic: 29
    body="Ebers Bliaut +2",
    -- Cursna: 15
    hands={ name="Fanatic Gloves", augments={'MP+35','"Conserve MP"+3','"Fast Cast"+3',}},
    -- Cursna: 17
    legs="Th. Pantaloons +2", -- Cursna / Regen
    -- Cursna 5
    feet={ name="Vanya Clogs", augments={'"Cure" potency +5%','"Cure" spellcasting time -15%','"Conserve MP"+6',}},
    -- Cursna: 10
    neck="Malison Medallion",
    -- Cursna: 10, Healing Magic: 7
    left_ring="Ephedra Ring",
    -- Cursna: 10, Healing Magic: 7
    right_ring="Ephedra Ring",
    -- Healing Magic 11
    right_ear={ name="Ebers Earring +1", augments={'System: 1 ID: 1676 Val: 0','Accuracy+15','Mag. Acc.+15','Damage taken-5%',}},
    -- Cursna: 25
    back={ name="Alaunus's Cape", augments={'MND+20','Eva.+20 /Mag. Eva.+20','MND+10','"Fast Cast"+10','Phys. dmg. taken-10%',}},
})

-- Enhancing
---------------------------
-- TODO Enhancing Skill Earring, Telchine
sets.midcast.Enhancing = {
    -- Duration 5 TODO
    head={ name="Telchine Cap", augments={'Mag. Evasion+19','"Conserve MP"+4','Enh. Mag. eff. dur. +5',}},
    -- Duration 10
    body={ name="Telchine Chas.", augments={'Mag. Evasion+20','Spell interruption rate down -9%','Enh. Mag. eff. dur. +10',}},
    -- Duration 8
    hands={ name="Telchine Gloves", augments={'Enh. Mag. eff. dur. +8',}},
    -- Duration 7
    legs={ name="Telchine Braconi", augments={'Enh. Mag. eff. dur. +7',}},
    -- Enhancing Skill: 19, Duration 5
    feet="Theo. Duckbills +2", -- Enh Duration
    -- Duration 10 
    waist="Embla Sash",
    -- Conserve MP, Skill+10
    neck="Incanter's Torque",
}

-- TODO RELIC LEGS
sets.midcast.BarSpell = set_combine(sets.midcast.Enhancing, {
    head="Ebers Cap +2", -- FC
    body="Ebers Bliaut +2", -- Refresh, Solace
    hands="Ebers Mitts +2", -- DT / Divine Caress
    legs={ name="Piety Pantaln. +2", augments={'Enhances "Afflatus Misery" effect',}},
    feet="Ebers Duckbills +2",
})

sets.midcast.Regen = set_combine(sets.midcast.Enhancing, {
    -- 14 Potency
    head="Inyanga Tiara +2",
    -- 28 potency
    body={ name="Piety Bliaut +1", augments={'Enhances "Benediction" effect',}},
    -- 22 Duration
    hands="Ebers Mitts +2",
    -- 21 Duration
    legs="Th. Pantaloons +2",
    -- 10 Potency
    feet={ name="Bunzi's Sabots", augments={'Path: A',}},
})

sets.midcast.Aquaveil = set_combine(sets.midcast.Enhancing, {
    -- Omen LUCK hands="Regal Cuffs",
    legs="Shedir Seraweels",
    -- AH Money waist="Emphatikos Rope",
})

sets.midcast.Stoneskin = set_combine(sets.midcast.Enhancing, {
    legs="Shedir Seraweels",
})

-- Enfeebling
--------------------------
sets.midcast.Enfeebling = {
    main="Bunzi's Rod",
    sub="Diamond Aspis", 
    head="Theophany Cap +2", -- Enfeeble/MACC
    body="Theo. Bliaut +2", -- Enfeeble/MACC
    hands="Theophany Mitts +2", -- Enfeeble/MACC
    legs="Th. Pantaloons +2", -- Enfeeble/MACC
    feet="Theo. Duckbills +2", -- Enfeeble/MACC
    right_ring="Kishar Ring", -- Enfeeble Duration
    -- MACC
    right_ear={ name="Ebers Earring +1", augments={'System: 1 ID: 1676 Val: 0','Accuracy+15','Mag. Acc.+15','Damage taken-5%',}},
}

-- TODO NUKING

--
-- TP Sets
--
sets.tp = {}

sets.tp.List = {
    "Default", 
}

sets.tp.Default = {
    ammo="Staunch Tathlum",
    head={ name="Bunzi's Hat", augments={'Path: A',}},
    body={ name="Nyame Mail", augments={'Path: B',}},
    hands="Bunzi's Gloves",
    legs={ name="Nyame Flanchard", augments={'Path: B',}},
    feet={ name="Nyame Sollerets", augments={'Path: B',}},
    neck="Warder's Charm +1",
    waist="Windbuffet Belt",
    left_ear="Eabani Earring",
    right_ear="Telos Earring",
    left_ring="Chirich Ring",
    right_ring="Chirich Ring",
    back="Null Shawl",
}

--
-- WS Sets 
-- 
sets.ws = {}
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
    -- WSD: +2
    left_ear="Ishvara Earring",
}
