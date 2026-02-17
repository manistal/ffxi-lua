--
-- RDM Lua by MigsDank
-- 

sets = {}

--[[
AF
    head="Atrophy Chapeau +3",
    body="Atrophy Tabard +3",
    hands="Atrophy Gloves +3",
    legs="Atrophy Tights +3",
    feet="Atro. Boots +3",

Relic
    head="Viti. Chapeau +2",
    body="Viti. Tabard +2",
    hands="Viti. Gloves +2",
    legs="Viti. Tights +2",
    feet="Vitiation Boots +2",

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
    "Idle",
    "DefSwords",
    "Savage",
    "BlackHalo",
    "MAB",
    "Dispel",
}

sets.weapons["Idle"] = {
    main={ name="Colada", augments={'MND+4','Pet: "Store TP"+5','"Refresh"+2','DMG:+7',}},
    sub="Diamond Aspis",
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
    ammo="Staunch Tathlum +1",
    -- Refresh 
    head="Viti. Chapeau +2",
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
    neck="Null Loop",
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


-- 
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
    body="Viti. Tabard +2",
    -- FC 4
    left_ear="Malignance Earring",
    -- FC 8
    right_ear={ name="Leth. Earring +1", augments={'System: 1 ID: 1676 Val: 0','Accuracy+12','Mag. Acc.+12','"Dbl.Atk."+4',}},
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
    -- SIRD 5
    right_ring="Evanescence Ring",
    -- SIRD 20 
    legs="Bunzi's Pants",
    -- HP
    waist="Plat. Mog. Belt",
})

-- Healing
--------------

-- Cure/Healing/COnserveMP
-- Total: Cure I: 56, Cure II: 4
sets.midcast.Cure = set_combine(sets.midcast.Default, {
    -- Cure I: 11, Cure II: 2
    head={ name="Kaykaus Mitra +1", augments={'MP+80','Spell interruption rate down +12%','"Cure" spellcasting time -7%',}},
    -- Cure I: 15, MEVA
    body="Bunzi's Robe",
    -- Cure I: 12
    legs="Atrophy Tights +3",
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
    body="Viti. Tabard +2",
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
    body="Viti. Tabard +2",
    -- Enhancing 22
    hands="Viti. Gloves +2",
    -- Enhancing 21
    legs="Atrophy Tights +3",
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
    right_ear={ name="Leth. Earring +1", augments={'System: 1 ID: 1676 Val: 0','Accuracy+12','Mag. Acc.+12','"Dbl.Atk."+4',}},
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
    body="Viti. Tabard +2",
    -- Duration 20
    hands="Atrophy Gloves +3",
    -- Duration 7
    legs={ name="Telchine Braconi", augments={'Enh. Mag. eff. dur. +7',}},
    -- Enhancing 30 / Duration 35
    feet="Leth. Houseaux +2",
    -- Duration 10 
    waist="Embla Sash",
    -- TODO JSE NECK
    -- Conserve MP, Skill+10
    neck="Incanter's Torque",
    -- Skill 8 
    left_ring="Stikini Ring +1",
    -- Duration 8
    right_ear={ name="Leth. Earring +1", augments={'System: 1 ID: 1676 Val: 0','Accuracy+12','Mag. Acc.+12','"Dbl.Atk."+4',}},
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
    -- TODO JSE NECK
    -- Conserve MP, Skill+10
    neck="Incanter's Torque",
    -- Skill 8 
    left_ring="Stikini Ring +1",
    -- Duration 8
    right_ear={ name="Leth. Earring +1", augments={'System: 1 ID: 1676 Val: 0','Accuracy+12','Mag. Acc.+12','"Dbl.Atk."+4',}},
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
    -- TODO JSE NECK
    -- Conserve MP, Skill+10
    neck="Incanter's Torque",
    -- Skill 8 
    left_ring="Stikini Ring +1",
    -- Duration 8
    right_ear={ name="Leth. Earring +1", augments={'System: 1 ID: 1676 Val: 0','Accuracy+12','Mag. Acc.+12','"Dbl.Atk."+4',}},
    -- Duration 20
    back={ name="Sucellos's Cape", augments={'MND+20','Mag. Acc+20 /Mag. Dmg.+20','MND+10','"Mag.Atk.Bns."+10','Spell interruption rate down-10%',}},
})

-- TODO???
sets.midcast.BarSpell = set_combine(sets.midcast.Enhancing, {
})

sets.midcast.Regen = set_combine(sets.midcast.Enhancing, {
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
    -- Merit ACC
    head="Viti. Chapeau +2",
    -- AF ACC
    body="Atrophy Tabard +3",
    -- +Sabateur
    hands="Leth. Ganth. +2",
    -- AF ACC
    legs="Atrophy Tights +3",
    -- AF ACC
    feet="Atro. Boots +3",
    -- 50 ACC
    neck="Null Loop",
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
    -- Skill 24
    head="Viti. Chapeau +2",
    -- Effect 16
    body="Lethargy Sayon +2",
    -- Skill 24
    hands="Leth. Ganth. +2",
    -- MACC
    legs="Leth. Fuseau +2",
    -- Skill 16 / Effect 5
    feet="Vitiation Boots +2",
    -- TODO: JSE Neck
    -- TODO: Obstinate Sash
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
    -- TODO: JSE Neck
    -- TODO: Obstinate Sash
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

-- Nuking
--------------------
sets.nuke = {}
sets.nuke.List = {
    "MagicBurst"
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
    feet="Vitiation Boots +2",
    -- MAB / MACC
    waist="Eschan Stone",
    -- MAB / INT
    neck="Sibyl Scarf",
    -- INT / MACC
    left_ear="Malignance Earring",
    -- TODO AMBU CAPE
})

sets.nuke.MagicBurst = set_combine(sets.nuke.FreeNuke, {
    -- TODO Ea Hat / Chest 
    hands="Bunzi's Gloves",
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
    body="Viti. Tabard +2",
}