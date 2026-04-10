--
-- RDM Lua by MigsDank
-- 

sets = {}

--[[
AF
    head="Atrophy Chapeau +3",
    body="Atrophy Tabard +3",
    hands="Atrophy Gloves +3",
    legs="Atrophy Tights +4",
    feet="Atro. Boots +4",

Relic
    head="Viti. Chapeau +3",
    body="Viti. Tabard +3",
    hands="Viti. Gloves +2",
    legs="Viti. Tights +2",
    feet="Vitiation Boots +3",

Empy
    head="Leth. Chappel +2",
    body="Lethargy Sayon +2",
    hands="Leth. Ganth. +2",
    legs="Leth. Fuseau +2",
    feet="Leth. Houseaux +2",


]]

--
-- Weapon Sets
-- 
sets.weapons = {}
sets.weapons.List = {
    "DefSwords",
    "Savage",
    "BlackHalo",
    "MAB",
    -- "Dispel",
    -- "MACCShield",
    "Refresh",
    "0TPDaggers"
}

sets.weapons["Refresh"] = {
    main={ name="Colada", augments={'MND+4','Pet: "Store TP"+5','"Refresh"+2','DMG:+7',}},
    sub="Archduke's Shield",
}

sets.weapons["DefSwords"] = {
    main="Naegling",
    sub="Sakpata's Sword"
}

sets.weapons["Savage"] = {
    main="Naegling",
    sub="Machaera +2",
}

sets.weapons["BlackHalo"] = {
    main="Maxentius",
    sub="Machaera +2",
}

sets.weapons["MAB"] = {
    main="Maxentius",
    sub="Bunzi's Rod"
}

sets.weapons["Dispel"] = {
    main="Daybreak",
    sub="Diamond Aspis",
}

sets.weapons["MACCShield"] = {
    main="Bunzi's Rod",
    sub="Diamond Aspis",
}

sets.weapons["0TPDaggers"] = {
    main="Esoteric Athame",
    sub="Thunder Hammer",
}

-- Idle/DT Base Set
-- DT == 50
-- MEva >= Eva = Regen
-- Current DT: 51
sets.idle = {}
sets.idle.List = {
    "Default",
    "Refresh",
}


sets.idle.Default = {
    -- DT: -3 
    -- ammo="Staunch Tathlum +1",
    -- Refresh +1
    ammo="Homiliary",
    -- Refresh 
    head="Viti. Chapeau +3",
    -- Refresh / DT 13
    body="Lethargy Sayon +2",
    -- DT 8 
    hands="Bunzi's Gloves",
    -- DT 8
    legs="Nyame Flanchard",
    -- DT 7
    feet="Nyame Sollerets",
    -- DT 6
    neck="Loricate Torque +1",
    -- MEVA
    waist="Carrier's Sash",
    -- HP
    left_ear="Eabani Earring",
    -- HP
    right_ear="Alabaster Earring",
    -- Refresh
    left_ring="Stikini Ring +1",
    -- SPEED
    right_ring="Shneddick Ring",
    -- MEVA
    back="Null Shawl",
}

sets.idle.Refresh = set_combine(sets.idle.Default, {
    -- Refresh +1
    ammo="Homiliary",
    -- Refresh +1
    waist="Fucho-no-Obi",
})


--
-- TP Sets
--
sets.tp = {}

sets.tp.List = {
    "Hybrid",
    "Enspell",
}


-- DW > 11 for /nin 
-- DW > 21 for /nin, > 9 for haste samba
-- Haste = 25
-- TA > STP = DA > 
-- DT 50 > MEVA > ACC >= TP
sets.tp.Hybrid = {
    -- TP
    ammo="Coiste Bodhar",
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
    --neck="Null Loop",
    neck="Anu Torque",
    -- DW / HP
    left_ear="Eabani Earring",
    -- TP
    right_ear="Sherida Earring",
    -- 10 DT
    left_ring="Murky Ring",
    -- ACC / STP
    right_ring="Chirich Ring",
    -- MEVA
    back="Null Shawl",
} 

sets.tp.Enspell = set_combine(sets.tp.Hybrid, {
    -- MACC
    body="Lethargy Sayon +2",
    -- Enspell Damage
    hands="Aya. Manopolas +2",
    -- Enspell ACC
    legs="Atro. Tights +4",
    -- MACC
    neck="Null Loop",
    -- % Damage
    waist="Orpheus's Sash",
    -- DW
    left_ear="Eabani Earring",
    -- MACC
    right_ear={ name="Leth. Earring +2", augments={'System: 1 ID: 1676 Val: 0','Accuracy+19','Mag. Acc.+19','"Dbl.Atk."+7','STR+13 DEX+13',}},
    -- ACC
    left_ring="Chirich Ring",
    -- ACC
    right_ring="Chirich Ring",
    -- MACC
    back="Null Shawl",
})

-- Precast Sets
--
sets.precast = {} 

-- RDM Gets 38% 
-- Need 42 from gear
-- Current: 42
sets.precast.FastCast = set_combine(sets.idle.Default, {
    -- FC 16
    head="Atrophy Chapeau +3",
    -- FC 14 
    body="Viti. Tabard +3",
    -- FC 4
    left_ear="Malignance Earring",
    -- FC 8
    right_ear={ name="Leth. Earring +2", augments={'System: 1 ID: 1676 Val: 0','Accuracy+19','Mag. Acc.+19','"Dbl.Atk."+7','STR+13 DEX+13',}},
    -- Some
    right_ring="Kishar Ring",
})


-- 
-- Midcast Sets
-- 
sets.midcast = {}

-- Defensive + SIRD
sets.midcast.Default = set_combine(sets.idle.Default, {
    -- SIRD 11
    ammo="Staunch Tathlum +1",
    -- SIRD 5
    neck="Loricate Torque +1",
    -- SIRD 3 / DT 
    left_ring="Murky Ring",
    -- SIRD 10
    right_ring="Freke Ring",
    -- SIRD 20 
    legs="Bunzi's Pants",
    -- HP
    waist="Plat. Mog. Belt",
})

-- Healing
--------------

--[[
TODO:
- Ambu cape with SIRD / Cure Potency 
- Bunzi Robe/Pants/Gloves for SIRD/DT
]]

-- Cure/Healing/COnserveMP
-- Total: Cure I: 56, Cure II: 4
sets.midcast.Cure = set_combine(sets.midcast.Default, {
    -- Cure I: 11, Cure II: 2
    head={ name="Kaykaus Mitra +1", augments={'MP+80','Spell interruption rate down +12%','"Cure" spellcasting time -7%',}},
    -- Cure I: 15, MEVA
    body="Bunzi's Robe",
    -- Cure I: 12
    legs="Atro. Tights +4",
    -- Cure I: 17, Conserve MP: 7, Cure II: 2
    feet={ name="Kaykaus Boots +1", augments={'Mag. Acc.+20','"Cure" potency +6%','"Fast Cast"+4',}},
})

sets.midcast.CureWeather = set_combine(sets.midcast.Cure, {
    main="Chatoyant Staff",
    sub="Enki Strap",
    waist="Hachirin-no-Obi",
})

sets.midcast.Cursna = set_combine(sets.midcast.Default, {
    -- Cursna / Conserve MP
    head={ name="Vanya Hood", augments={'MND+10','Spell interruption rate down +15%','"Conserve MP"+6',}},
    -- Healing Magic 24
    body="Viti. Tabard +3",
    -- Cursna 5
    feet={ name="Vanya Clogs", augments={'"Cure" potency +5%','"Cure" spellcasting time -15%','"Conserve MP"+6',}},
    -- Cursna: 10
    neck="Malison Medallion",
    -- Cursna: 10, Healing Magic: 7
    left_ring="Ephedra Ring",
    -- Cursna: 10, Healing Magic: 7
    right_ring="Ephedra Ring",
})

-- Enhancing
---------------------------

-- Skill++
sets.midcast.EnhancingSkill = set_combine(sets.midcast.Default, {
    -- Enhancing Duration 
    sub="Amurapi Shield",
    -- Enhancing 21
    body="Viti. Tabard +3",
    -- Enhancing 22
    hands="Viti. Gloves +2",
    -- Enhancing 21
    legs="Atro. Tights +4",
    -- Enhancing 30
    feet="Leth. Houseaux +2",
    -- Enhancing 5
    waist="Olympus Sash",
    -- Enhancing 10 
    neck="Incanter's Torque",
    -- Enhancing 8
    left_ring="Stikini Ring +1",
    -- TODO MIMIMIR
    -- Enhancing Duration
    right_ear={ name="Leth. Earring +2", augments={'System: 1 ID: 1676 Val: 0','Accuracy+19','Mag. Acc.+19','"Dbl.Atk."+7','STR+13 DEX+13',}},
    -- Enhancing 6
    back="Estoqueur's Cape",
})

-- Duration > all
sets.midcast.EnhancingSelf = set_combine(sets.midcast.Default, {
    -- Duration 10
    sub="Ammurapi Shield",
    -- Duration 5 
    head={ name="Telchine Cap", augments={'Mag. Evasion+19','"Conserve MP"+4','Enh. Mag. eff. dur. +5',}},
    -- Duration 10
    body="Viti. Tabard +3",
    -- Duration 20
    hands="Atrophy Gloves +3",
    -- Duration 7
    legs={ name="Telchine Braconi", augments={'Enh. Mag. eff. dur. +7',}},
    -- Enhancing 30 / Duration 35
    feet="Leth. Houseaux +2",
    -- Duration 10 
    waist="Embla Sash",
    -- Duration 
    neck={ name="Dls. Torque +2", augments={'Path: A',}},
    -- Conserve MP, Skill+10
    neck="Incanter's Torque",
    -- Skill 8 
    left_ring="Stikini Ring +1",
    -- Duration 8
    right_ear={ name="Leth. Earring +2", augments={'System: 1 ID: 1676 Val: 0','Accuracy+19','Mag. Acc.+19','"Dbl.Atk."+7','STR+13 DEX+13',}},
    -- Duration 20
    back={ name="Sucellos's Cape", augments={'MND+20','Mag. Acc+20 /Mag. Dmg.+20','MND+10','"Mag.Atk.Bns."+10','Spell interruption rate down-10%',}},
})

-- Empy > Duration > Skill 
sets.midcast.EnhancingOthers = set_combine(sets.midcast.Default, {
    -- Duration 10
    sub="Ammurapi Shield",
    -- Composure
    head="Leth. Chappel +2",
    -- Composure
    body="Lethargy Sayon +2",
    -- Duration 20
    hands="Atrophy Gloves +3",
    -- Composure
    legs="Leth. Fuseau +2",
    -- Compsure / Duration 35
    feet="Leth. Houseaux +2",
    -- Duration 10 
    waist="Embla Sash",
    -- Duration 
    neck={ name="Dls. Torque +2", augments={'Path: A',}},
    -- Conserve MP, Skill+10
    neck="Incanter's Torque",
    -- Skill 8 
    left_ring="Stikini Ring +1",
    -- Duration 8
    right_ear={ name="Leth. Earring +2", augments={'System: 1 ID: 1676 Val: 0','Accuracy+19','Mag. Acc.+19','"Dbl.Atk."+7','STR+13 DEX+13',}},
    -- Duration 20
    back={ name="Sucellos's Cape", augments={'MND+20','Mag. Acc+20 /Mag. Dmg.+20','MND+10','"Mag.Atk.Bns."+10','Spell interruption rate down-10%',}},
})

sets.midcast.Refresh = set_combine(sets.midcast.Default, {
    -- Duration 10
    sub="Ammurapi Shield",
    -- TODO Almaric Head
    -- Refresh Potency +2
    body="Atrophy Tabard +3",
    -- Duration 20
    hands="Atrophy Gloves +3",
    -- Refresh Potency +3
    legs="Leth. Fuseau +2",
    -- Compsure / Duration 35
    feet="Leth. Houseaux +2",
    -- Duration 10 
    waist="Embla Sash",
    -- Duration 
    neck={ name="Dls. Torque +2", augments={'Path: A',}},
    -- Conserve MP, Skill+10
    neck="Incanter's Torque",
    -- Skill 8 
    left_ring="Stikini Ring +1",
    -- Duration 8
    right_ear={ name="Leth. Earring +2", augments={'System: 1 ID: 1676 Val: 0','Accuracy+19','Mag. Acc.+19','"Dbl.Atk."+7','STR+13 DEX+13',}},
    -- Duration 20
    back={ name="Sucellos's Cape", augments={'MND+20','Mag. Acc+20 /Mag. Dmg.+20','MND+10','"Mag.Atk.Bns."+10','Spell interruption rate down-10%',}},
})

-- TODO???
sets.midcast.BarSpell = set_combine(sets.midcast.EnhancingOthers, {
})

sets.midcast.Regen = set_combine(sets.midcast.EnhancingOthers, {
    -- 14 Potency
    head="Inyanga Tiara +2",
    -- 10 Potency
    feet={ name="Bunzi's Sabots", augments={'Path: A',}},
})

sets.midcast.Aquaveil = set_combine(sets.midcast.EnhancingSelf, {
    main="Vadose rod",
    -- Omen LUCK hands="Regal Cuffs",
    legs="Shedir Seraweels",
    -- AH Money waist="Emphatikos Rope",
})

sets.midcast.Stoneskin = set_combine(sets.midcast.EnhancingSelf, {
    legs="Shedir Seraweels",
})


-- Enfeebling
--------------------------

-- MACC > ALL
sets.midcast.EnfeeblingMACC = set_combine(sets.midcast.Default, {
    -- MACC
    ranged="Ullr",
    ammo="",
    -- Merit ACC
    head="Viti. Chapeau +3",
    -- AF ACC
    body="Atrophy Tabard +3",
    -- +Sabateur
    hands="Leth. Ganth. +2",
    -- AF ACC
    legs="Atro. Tights +4",
    -- AF ACC
    feet="Atro. Boots +4",
    -- 50 ACC
    neck="Null Loop",
    -- MACC
    waist="Null Belt",
    -- 10 ACC
    left_ear="Malignance Earring",
    -- Duration 10 
    right_ear="Snotra Earring",
    -- 19 ACC
    left_ring="Stikini Ring +1",
    -- 10 ACC / Duration 10 
    right_ring="Kishar Ring",
    -- 50 ACC
    back="Null Shawl",
})

-- Skill >= Effect > dMND
sets.midcast.EnfeeblingPotency = set_combine(sets.midcast.Default, {
    -- Potency
    ammo="Regal Gem",
    -- Skill 24
    head="Viti. Chapeau +3",
    -- Effect 16
    body="Lethargy Sayon +2",
    -- Skill 24
    hands="Leth. Ganth. +2",
    -- MACC
    legs="Leth. Fuseau +2",
    -- Skill 16 / Effect 5
    feet="Vitiation Boots +3",
    -- Duration / Effect 
    neck={ name="Dls. Torque +2", augments={'Path: A',}},
    -- TODO: Obstinate Sash
    -- MACC
    waist="Null Belt",
    -- 10 ACC
    left_ear="Malignance Earring",
    -- Duration 10 
    right_ear="Snotra Earring",
    -- 19 ACC
    left_ring="Stikini Ring +1",
    -- Duration 10 
    right_ring="Kishar Ring",
    -- Effect / ACC
    back={ name="Sucellos's Cape", augments={'MND+20','Mag. Acc+20 /Mag. Dmg.+20','MND+10','"Mag.Atk.Bns."+10','Spell interruption rate down-10%',}},
})

sets.midcast.EnfeeblingDuration = set_combine(sets.midcast.Default, {
    -- Composure
    head="Leth. Chappel +2",
    -- Composure / Effect 16
    body="Lethargy Sayon +2",
    -- Composure / Skill 24
    hands="Leth. Ganth. +2",
    -- Composure / MACC
    legs="Leth. Fuseau +2",
    -- Composure / Duration
    feet="Leth. Houseaux +2",
    -- Duration / Effect 
    neck={ name="Dls. Torque +2", augments={'Path: A',}},
    -- TODO: Obstinate Sash
    -- MACC
    waist="Null Belt",
    -- 10 ACC
    left_ear="Malignance Earring",
    -- Duration 10 
    right_ear="Snotra Earring",
    -- 19 ACC
    left_ring="Stikini Ring +1",
    -- Duration 10 
    right_ring="Kishar Ring",
    -- Effect / ACC
    back={ name="Sucellos's Cape", augments={'MND+20','Mag. Acc+20 /Mag. Dmg.+20','MND+10','"Mag.Atk.Bns."+10','Spell interruption rate down-10%',}},
})

sets.midcast.Dispel = set_combine(sets.midcast.EnfeeblingMACC, {
    -- Dispel +1
    neck={ name="Dls. Torque +2", augments={'Path: A',}},
})

-- Nuking
--------------------
sets.nuke = {}
sets.nuke.List = {
    "MagicBurst",
    "FreeNuke",
}

sets.nuke.FreeNuke = set_combine(sets.midcast.Default, {
    -- MAB
    main="Bunzi's Rod", 
    -- MACC / INT
    sub="Diamond Aspis",
    -- INT / MACC / MAB
    head="Leth. Chappel +2",
    -- INT / MACC / MAB
    body="Lethargy Sayon +2",
    -- INT / MACC / MAB
    hands="Leth. Ganth. +2",
    -- INT / MACC / MAB
    legs="Leth. Fuseau +2",
    -- INT / MACC / MAB
    feet="Vitiation Boots +3",
    -- MAB / MACC
    waist="Sacro Cord",
    -- MAB / INT
    neck="Sibyl Scarf",
    -- INT / MACC
    left_ear="Malignance Earring",
    -- MAB / INT
    right_ring="Freke Ring",
    -- TODO AMBU CAPE
    -- TODO ACUITY BELT
    -- TODO TALTHUM
})

-- MB1 Cap 40: Current: 39 
-- MB2 No Cap: Current: 21
sets.nuke.MagicBurst = set_combine(sets.nuke.FreeNuke, {
    -- MB2 / MB1: 6
    head="Ea Hat",
    -- MB2 / MB1: 8
    body="Ea Houppelande",
    -- MB1: 8
    hands="Bunzi's Gloves",
    -- MB2 / MB1: 7
    legs="Ea Slops",
})


--
-- WS Sets 
-- 
sets.ws = {}

-- TP Bonus > WSD > Attack = Accuracy
sets.ws.Default = {
    -- WSD
    ammo="Oshasha's Treatise",
    -- WSD: +6
    -- TODO VITI HELM
    head={ name="Nyame Helm", augments={'Path: B',}},
    -- WSD: +5
    body={ name="Nyame Mail", augments={'Path: B',}},
    -- WSD: +8
    hands={ name="Nyame Gauntlets", augments={'Path: B',}},
    -- WSD: +3
    legs={ name="Nyame Flanchard", augments={'Path: B',}},
    -- WSD: +8~12
    feet="Leth. Houseaux +2",
    -- STR/ATK
    waist="Sailfi Belt +1",
    -- 30 ATK
    neck="Republican Platinum Medal",
    -- PDL/Stats
    left_ring="Ephramad's Ring",
    -- STR 15
    right_ring="Sroda Ring",
    -- TP+250
    right_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
    -- WSD: +2
    left_ear="Ishvara Earring",
    -- WSD 10
    back={ name="Sucellos's Cape", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%',}},
}


-- 
-- Job Ability Sets
-- 
sets.ja = {}

sets.ja["Chainspell"] = {
    body="Viti. Tabard +3",
}

sets.ja["Saboteur"] = {
    sub="Diamond Aspis",
}