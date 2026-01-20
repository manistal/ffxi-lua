--
-- DRK Lua by MigsDank
-- 

sets = {}

--
-- Weapon Sets
-- 
sets.weapons = {}
sets.weapons.List = {
    "Idle",
    "DefSwords",
    "Savage",
    "MAB",
    "Dispel",
}

sets.weapons["Idle"] = {
    main="Colada",
    sub="Diamond Aspis",
}

sets.weapons["DefSwords"] = {
    main="Naegling",
    sub="Sakpata's Sword"
}

sets.weapons["Savage"] = {
    main="Naegling",
    sub="Gleti's Knife",
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
    "Regen",
}


sets.idle.Default = {
    -- DT: -3 
    ammo="Staunch Tathlum +1",
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
    -- HP / DT 
    waist="Plat. Mog. Belt",
    -- HP
    left_ear="Alabaster Earring",
    -- HP
    right_ear="Eabani Earring",
    -- Refresh
    left_ring="Stikini Ring +1",
    -- SPEED
    right_ring="Shneddick Ring",
    -- MEVA
    back="Null Shawl",
}

sets.idle.Refresh = set_combine(sets.idle.Default, {
    ammo="Homiliary",
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
    right_ear={ name="Leth. Earring +1", augments={'System: 1 ID: 1676 Val: 0','Accuracy+12','Mag. Acc.+12','"Dbl.Atk."+4',}},
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
sets.precast.Default = {
}

-- RDM Gets 38% from JP Gifts, 30% from 99
-- Need ~42-50% from gear
-- Current: 44
sets.precast.FastCast = {
    -- FC 13
    head={ name="Merlinic Hood", augments={'"Fast Cast"+5','"Mag.Atk.Bns."+1',}},
    -- FC 10 
    body={ name="Merlinic Jubbah", augments={'"Mag.Atk.Bns."+30','"Fast Cast"+4','MND+9',}},
    -- FC 6
    hands={ name="Leyline Gloves", augments={'Accuracy+5','"Mag.Atk.Bns."+7','"Fast Cast"+1',}},
    -- FC 6
    legs="Aya. Cosciales +2",
    -- FC 4
    right_ring="Kishar Ring",
    -- FC 4
    left_ear="Malignance Earring",
    -- FC 2
    right_ear="Loquac. Earring",
}


-- 
-- Midcast Sets
-- 
sets.midcast = {}

-- Cure/Healing/COnserveMP
-- Total: Cure I: 56, Cure II: 4
sets.midcast.Cure = {
    -- SIRD / DT
    ammo="Staunch Tathlum +1",
    -- Cure I: 11, Cure II: 2
    head={ name="Kaykaus Mitra +1", augments={'MP+80','Spell interruption rate down +12%','"Cure" spellcasting time -7%',}},
    -- Cure I: 15, MEVA
    body="Bunzi's Robe",
    -- 12 Conserve MP
    legs={ name="Vanya Slops", augments={'MND+10','Spell interruption rate down +15%','"Conserve MP"+6',}},
    -- TODO Artifact Legs 
    -- Cure I: 17, Conserve MP: 7, Cure II: 2
    feet={ name="Kaykaus Boots +1", augments={'Mag. Acc.+20','"Cure" potency +6%','"Fast Cast"+4',}},
    -- SIRD / DT
    neck="Loricate Torque +1",
    -- 5 Cure I
    left_ear="Mendi. Earring",
    -- Cure I: 1, Cure II: 1
    left_ring="Naji's Loop",
    -- SIRD / DT 
    right_ring="Murky Ring",
    -- HP / 5 DT
    left_ear="Alabaster Earring",
    -- Cure I: 5, Conserve MP: 2
    right_ear="Mendi. Earring",
    -- TODO Ambu FC Cape
}

sets.midcast.CureWeather = set_combine(sets.midcast.Cure, {
    main="Chatoyant Staff",
    sub="Enki Strap",
    waist="Hachirin-no-Obi",
})

-- Status Removal
----------------------
sets.midcast.StatusRemoval = {
}

sets.midcast.Cursna = set_combine(sets.midcast.StatusRemoval, {
    -- Healing Magiuc: 15
    main={ name="Queller Rod", augments={'Healing magic skill +15','"Cure" potency +10%','"Cure" spellcasting time -7%',}},
    -- Cursna / Conserve MP
    head={ name="Vanya Hood", augments={'MND+10','Spell interruption rate down +15%','"Conserve MP"+6',}},
    -- Cursna: 15
    hands={ name="Fanatic Gloves", augments={'MP+35','"Conserve MP"+3','"Fast Cast"+3',}},
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
-- TODO Enhancing Skill Earring, Telchine
sets.midcast.Enhancing = {
    sub="Ammurapi Shield",
    -- Duration 5 TODO
    head={ name="Telchine Cap", augments={'Mag. Evasion+19','"Conserve MP"+4','Enh. Mag. eff. dur. +5',}},
    -- Duration 10
    body={ name="Telchine Chas.", augments={'Mag. Evasion+20','Spell interruption rate down -9%','Enh. Mag. eff. dur. +10',}},
    -- Duration 8
    hands={ name="Telchine Gloves", augments={'Enh. Mag. eff. dur. +8',}},
    -- Duration 7
    legs={ name="Telchine Braconi", augments={'Enh. Mag. eff. dur. +7',}},
    -- Duration 8
    feet={ name="Telchine Pigaches", augments={'Song spellcasting time -7%','Enh. Mag. eff. dur. +8',}},
    -- Duration 10 
    waist="Embla Sash",
    -- Conserve MP, Skill+10
    neck="Incanter's Torque",
    -- Enhancing Duration
    right_ear={ name="Leth. Earring +1", augments={'System: 1 ID: 1676 Val: 0','Accuracy+12','Mag. Acc.+12','"Dbl.Atk."+4',}},
    -- Skill 8 
    left_ring="Stikini Ring +1",
}

-- TODO???
sets.midcast.BarSpell = set_combine(sets.midcast.Enhancing, {
})

sets.midcast.Regen = set_combine(sets.midcast.Enhancing, {
    -- 14 Potency
    head="Inyanga Tiara +2",
    -- 10 Potency
    feet={ name="Bunzi's Sabots", augments={'Path: A',}},
})

sets.midcast.Aquaveil = set_combine(sets.midcast.Enhancing, {
    main="Vadose rod",
    -- Omen LUCK hands="Regal Cuffs",
    legs="Shedir Seraweels",
    -- AH Money waist="Emphatikos Rope",
})

sets.midcast.Stoneskin = set_combine(sets.midcast.Enhancing, {
    legs="Shedir Seraweels",
})

sets.midcast.Auspice = set_combine(sets.midcast.Enhancing, {
})

-- Enfeebling
--------------------------
sets.midcast.Enfeebling = {
    main="Bunzi's Rod",
    sub="Diamond Aspis", 
    right_ring="Kishar Ring", -- Enfeeble Duration
    back={ name="Sucellos's Cape", augments={'MND+20','Mag. Acc+20 /Mag. Dmg.+20','MND+10','"Mag.Atk.Bns."+10','Spell interruption rate down-10%',}},
}

-- TODO NUKING

sets.midcast.Nuke = {
    -- MACC -- TODO: JSE Neck
    neck="Null Loop",
    -- MAB / MACC - TODO Hachirin no obi
    waist="Eschan Stone",
    -- MAB
    left_ear="Malignance Earring",
}

--
-- WS Sets 
-- 
sets.ws = {}

-- TP Bonus > WSD > Attack = Accuracy
sets.ws.Default = {
    -- WSD: +6
    head={ name="Nyame Helm", augments={'Path: B',}},
    -- WSD: +5
    body={ name="Nyame Mail", augments={'Path: B',}},
    -- WSD: +8
    hands={ name="Nyame Gauntlets", augments={'Path: B',}},
    -- WSD: +3
    legs={ name="Nyame Flanchard", augments={'Path: B',}},
    -- WSD: +12
    feet={ name="Nyame Sollerets", augments={'Path: B',}},
    -- STR/ATK
    waist="Sailfi Belt +1",
    -- 30 ATK
    neck="Republican Platinum Medal",
    -- WSD 10
    left_ring="Cornelia's Ring",
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
