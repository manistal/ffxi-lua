--
-- DRK Lua by MigsDank
-- 

sets = {}

--
-- Weapon Sets
-- 
sets.weapons = {}
sets.weapons.List = {
    "Swords",
    "Savage",
    "MAB",
}


sets.weapons["Swords"] = {
    main="Naegling",
    sub="Sakpata's Sword"
}

sets.weapons["Savage"] = {
    main="Naegling",
    sub="Gleti's Knife",
}

sets.weapons["MAB"] = {
    main="Kaja Rod",
    sub="Bunzi's Rod"
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
    -- DT -3
    waist="Plat. Mog. Belt",
    -- HP
    left_ear="Odnowa Earring +1",
    -- HP
    right_ear="Eabani Earring",
    -- DT: -10
    left_ring="Murky Ring",
    -- SPEED
    right_ring="Shneddick Ring",
    -- MEVA
    back="Null Shawl",
}

sets.idle.Regen = set_combine(sets.idle.Default, {
    left_ring="Chirich Ring",
    right_ring="Chirich Ring",
})


--
-- TP Sets
--
sets.tp = {}

sets.tp.List = {
    "Hybrid",
    "DTMeva",
    "Learning"
}


-- DW > 11 for /nin 
-- DW > 21 for /nin, > 9 for haste samba
-- Haste = 25
-- TA > STP = DA > 
-- DT 50 > MEVA > ACC >= TP
sets.tp.Hybrid = {
    -- 7 DT
    head={ name="Nyame Helm", augments={'Path: B',}},
    -- 9 DT
    body="Malignance Tabard",
    -- 5 DT 
    hands="Malignance Gloves",
    -- 12 DT
    legs={ name="Nyame Flanchard", augments={'Path: B',}},
    -- 7 DT
    feet={ name="Nyame Sollerets", augments={'Path: B',}},
    -- Triple ATK
    waist="Sailfi Belt +1",
    -- ACC / 5 DT
    neck="Null Loop",
    -- DW
    left_ear="Suppanomimi",
    -- TP
    right_ear="Telos Earring",
    -- 10 DT
    left_ring="Murky Ring",
    -- ACC / STP
    right_ring="Chirich Ring",
    -- MEVA
    back="Null Shawl",
} 


sets.tp.DTMeva = set_combine(sets.idle.Default, {
    left_ear="Suppanomimi",
    right_ear="Telos Earring",
    right_ring="Chirich Ring",
    left_ring="Chirich Ring",
    waist="Sailfi Belt +1",
})


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
    -- Cure I: 30
    main="Bunzi's Rod",
    -- Conserve MP: 4
    sub="Thuellaic Ecu +1",
    -- 10 Cure I, 12 Conserve MP
    head={ name="Vanya Hood", augments={'MND+10','Spell interruption rate down +15%','"Conserve MP"+6',}},
    -- 12 Conserve MP
    -- TODO Artifact Legs 
    legs={ name="Vanya Slops", augments={'MND+10','Spell interruption rate down +15%','"Conserve MP"+6',}},
    --  10 Cure I, 6 Conserve MP
    feet={ name="Vanya Clogs", augments={'"Cure" potency +5%','"Cure" spellcasting time -15%','"Conserve MP"+6',}},
    -- Cure I: 1, Cure II: 1
    left_ring="Naji's Loop",
    -- Cure I: 5, Conserve MP: 2
    left_ear="Mendi. Earring",
}

sets.midcast.CureWeather = set_combine(sets.midcast.Cure, {
    main="Chatoyant Staff",
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
}


-- 
-- Job Ability Sets
-- 
sets.ja = {}
