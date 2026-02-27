--
-- DRK Lua by MigsDank
-- 

sets = {}

--
-- Weapon Sets
-- 
sets.weapons = {}
sets.weapons.List = {
    "Apoc", 
    "Montante",
    "Lycurgos",
    "Foenaria",
    -- Need manual clicks for these
    --"Naegling",
    --"Loxotic Mace",
    --"Piercing",
}

sets.weapons["Montante"] = {
    --main={ name="Montante +1", augments={'Path: A',}},
    main="Agwu's Claymore",
    sub="Utu Grip",
}

sets.weapons["Apoc"] = {
    main="Apocalypse",
    sub="Utu Grip",
}

sets.weapons["Foenaria"] = {
    main="Foenaria",
    sub="Utu Grip",
}

sets.weapons["Lycurgos"] = {
    main="Lycurgos",
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

sets.weapons["Piercing"] = {
    main="Malevolence",
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
    -- DT / HP
    left_ear="Alabaster Earring",
    -- HP
    right_ear="Tuisto Earring",
    -- HP, DT: -4
    left_ring="Moonbeam Ring",
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
    "Sakpata",
    "HybridACC",
    "GlassCannon" 
}

sets.tp.Sakpata = {
    -- STP/DBLATK
    ammo="Coiste Bodhar",
    -- SAKPATA
    head="Sakpata's Helm",
    body="Sakpata's Plate",
    hands="Sakpata's Gauntlets",
    legs="Sakpata's Cuisses",
    feet="Sakpata's Leggings",
    -- ACC/STP
    neck={ name="Abyssal Beads +2", augments={'Path: A',}},
    -- 2ATK/3ATK
    waist="Sailfi Belt +1",
    -- ACC/STP
    left_ear="Telos Earring",
    -- ACC/2ATK
    right_ear="Brutal Earring",
    -- ACC/STP/DT
    left_ring="Moonbeam Ring",
    -- QA
    right_ring="Niqmaddu Ring",
    -- ACC/STP/2ATK
    back="Null Shawl",
}

sets.tp.HybridACC = set_combine(sets.tp.Sakpata, {
    -- ACC/2ATK
    legs="Ig. Flanchard +4",
    -- ACC
    neck="Null Loop",
    -- TODO: Null Belt
    -- ACC/2ATLK
    waist="Ioskeha Belt",
    -- ACC/2ATK
    right_ear="Schere Earring",
    -- ACC
    right_ring="Chichrich Ring",
})

sets.tp.GlassCannon = set_combine(sets.tp.Sakpata, {
    -- STP/3ATK
    head="Flam. Zucchetto +2",
    -- 2ATK
    legs="Ig. Flanchard +4",
    -- STP/3ATK
    -- feet="Flam. Gambieras +2",
    -- STP
    neck={ name="Abyssal Beads +2", augments={'Path: A',}},
    -- 3ATK/2ATK
    waist="Sailfi Belt +1",
    -- -MP / +ACC/2ATK
 --   right_ear="Dedition Earring",
    right_ear="Schere Earring",
    -- STP
    left_ring="Chirich Ring",
    -- STP
    right_ring="Niqmaddu Ring",
})


--
-- WS Sets 
-- 
sets.ws = {}

-- WSD >>> ALL by default
sets.ws.Default = {
    -- WSD
    ammo="Knobkierrie",
    -- WSD 6+
    head={ name="Nyame Helm", augments={'Path: B',}},
    -- WSD 12
    body="Ignominy Cuirass +4",
    -- WSD 6+
    hands={ name="Nyame Gauntlets", augments={'Path: B',}},
    -- WSD 10
    legs={ name="Fall. Flanchard +4", augments={'Enhances "Muted Soul" effect',}},
    -- WSD 12
    feet="Heath. Sollerets +3",
    -- DBLATK/PDL
    neck={ name="Abyssal Beads +2", augments={'Path: A',}},
    -- 2ATK/3ATK
    waist="Sailfi Belt +1",
    -- PDL/Stats
    left_ring="Ephramad's Ring",
    -- Stats/Quad ATK
    right_ring="Niqmaddu Ring",
    -- TP+
    left_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
    -- WSD 2 // TODO need a better roll
    right_ear={ name="Heath. Earring +1", augments={'System: 1 ID: 1676 Val: 0','Accuracy+11','Mag. Acc.+11','Weapon skill damage +2%',}},
    -- WSD 10
    back={ name="Ankou's Mantle", augments={'STR+20','Accuracy+20 Attack+20','Accuracy+10','Weapon skill damage +10%','Phys. dmg. taken-10%',}},
}

sets.ws.Torcleaver = set_combine(sets.ws.Default, {
    -- VIT Stats 
    back={ name="Ankou's Mantle", augments={'VIT+20','Accuracy+20 Attack+20','STR+5','Weapon skill damage +10%','Phys. dmg. taken-10%',}},
})

sets.ws.Scythe = set_combine(sets.ws.Default, {
    head="Heath. Bur. +3",
    -- TODO Rank up Nyame
})

sets.ws["Cross Reaper"] = sets.ws.Scythe
sets.ws["Quietus"] = sets.ws.Scythe
sets.ws["Insurgency"] = sets.ws.Scythe
sets.ws["Entropy"] = sets.ws.Scythe
sets.ws["Catastrophe"] = sets.ws.Scythe
sets.ws["Origin"] = sets.ws.Scythe

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
    -- MAAC 6
    right_ear="Heathen's Earring",
    -- MAAC 7
    waist="Eschan Stone",
})
sets.ws["Shockwave"] = sets.ws.MACC         -- AOE Sleep
sets.ws["Herculean Slash"] = sets.ws.MACC   -- Paralyze
sets.ws["Armor Break"] = sets.ws.MACC       -- Defense Down

sets.ws.MultiHit = set_combine(sets.ws.Default, {
    -- DBL ATK
    ammo={ name="Coiste Bodhar", augments={'Path: A',}},
    -- 3ATK: 5
    head="Flam. Zucchetto +2",
    --- 2ATK: 8, PDL
    body="Sakpata's Plate",
    -- 2ATK: 6
    hands="Sakpata's Gauntlets",
    -- 2ATK: 10
    legs="Ig. Flanchard +4",
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
sets.ja["Dark Seal"] = {
    head={ name="Fall. Burgeonet +3", augments={'Enhances "Dark Seal" effect',}},
}
sets.ja["Nether Void"] = {
    head={ name="Fall. Burgeonet +3", augments={'Enhances "Dark Seal" effect',}},
    legs="Heath. Flanchard +2",
}
sets.ja["Blood Weapon"] = {
    body={ name="Fall. Cuirass +3", augments={'Enhances "Blood Weapon" effect',}},
}
sets.ja["Diabolic Eye"] = {
    hands={ name="Fall. Fin. Gaunt. +3", augments={'Enhances "Diabolic Eye" effect',}},
}
sets.ja["Souleater"] = {
    head="Ig. Burgeonet +3",
    legs={ name="Fall. Flanchard +4", augments={'Enhances "Muted Soul" effect',}},
}
sets.ja["Weapon Bash"] = {
    hands="Ig. Gauntlets +2",
}


-- 
-- Spell Precast Sets
--
sets.precast = {} 

-- Fast Cast
sets.precast.FastCast = {
    head={ name="Fall. Burgeonet +3", augments={'Enhances "Dark Seal" effect',}},
    body={ name="Fall. Cuirass +3", augments={'Enhances "Blood Weapon" effect',}},
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

-- 
-- Base Casting Sets 
-- 

-- MEVA + SIRD
sets.midcast.Default = set_combine(sets.idle.Default, {
    -- 11 SIRD
    ammo="Staunch Tathlum +1",
    -- 10 SIRD
    left_ring="Evanescence Ring",
})

sets.midcast.DarkSkill = set_combine(sets.midcast.Default, {
    -- 21 Skill
    head="Ig. Burgeonet +3",
    -- 15 Skill (TODO +1)
    body={ name="Carm. Scale Mail", augments={'Attack+15','"Mag.Atk.Bns."+10','"Dbl.Atk."+2',}},
    -- 18 Skill
    hands={ name="Fall. Fin. Gaunt. +3", augments={'Enhances "Diabolic Eye" effect',}},
    -- 25 Skill 
    legs="Heath. Flanchard +2",
    -- Duration
    feet="Ratri Sollerets",
    -- 10 Skill
    neck="Incanter's Torque",
    -- 10 Skill
    left_ear="Mani Earring",
    -- 10 Skill
    left_ring="Evanescence Ring",
    -- 6 Skill
    back={ name="Niht Mantle", augments={'Attack+6','Dark magic skill +6','"Drain" and "Aspir" potency +25',}},
})

sets.midcast.MAB = set_combine(sets.midcast.Default, {
    -- 30 MAB
    head={ name="Nyame Helm", augments={'Path: B',}},
    -- 60 MAB
    body={ name="Fall. Cuirass +3", augments={'Enhances "Blood Weapon" effect',}},
    -- 62 MAB
    hands={ name="Fall. Fin. Gaunt. +3", augments={'Enhances "Diabolic Eye" effect',}},
    -- 30 MAB
    legs={ name="Nyame Flanchard", augments={'Path: B',}},
    -- 50 MAB
    feet="Heath. Sollerets +3",
    -- 10 MAB
    neck="Sibyl Scarf",
    -- 8 MAB
    left_ear="Malignance Earring",
    -- 7 MAB
    waist="Eschan Stone",
})

sets.midcast.MACC = set_combine(sets.midcast.Default, {
    -- 51 MACC
    head="Heath. Burgeon. +3",
    -- 60 MACC
    body="Ig. Cuirass +4",
    -- 52 MACC
    hands="Heath. Gauntlets +2",
    -- 53 MACC (TODO +4 Artifact)
    legs="Heath. Flanchard +2",
    -- 60 MACC
    feet="Heath. Sollerets +3",
    -- 50 MACC
    neck="Null Loop",
    -- 7 MACC
    waist="Eschan Stone",
    -- 10 MACC
    left_ear="Malignance Earring",
    -- 5 MACC
    right_ring="Kishar Ring",
    -- TODO Metamorph Ring
    -- 50 MACC
    back="Null Shawl",
})

-- 
-- Buffs
-- 
sets.midcast["Endark"] = sets.midcast.DarkSkill
sets.midcast["Endark II"] = sets.midcast.DarkSkill

-- 
-- Debuffs
-- 
sets.midcast["Stun"] = set_combine(sets.midcast.DarkSkill, sets.midcast.MACC, {
    -- 20 Duration
    feet="Ratri Sollerets",
})

sets.midcast["Absorb"] = set_combine(sets.midcast.MACC, sets.midcast.DarkSkill, {
    -- 20 Duration
    head="Ig. Burgeonet +3",
    -- AbsorbTP +25
    hands="Heath. Gauntlets +2",
    -- 20 Duration
    feet="Ratri Sollerets",
    -- 10 Duration
    right_ring="Kishar Ring",
})

sets.midcast.Enfeebling = set_combine(sets.midcast.MACC, {
    -- 10 Duration
    right_ring="Kishar Ring",
    -- 23 Skill
    body="Ig. Cuirass +4",
}) 


-- 
-- Drain 
-- 
sets.midcast.Drain = set_combine(sets.midcast.MAB, sets.midcast.DarkSkill, {
    -- Dark Seal
    head={ name="Fall. Burgeonet +3", augments={'Enhances "Dark Seal" effect',}},
    -- 16 Drain
    hands={ name="Fall. Fin. Gaunt. +3", augments={'Enhances "Diabolic Eye" effect',}},
    -- Nether Void
    legs="Heath. Flanchard +2",
    -- 20 Duration
    feet="Ratri Sollerets",
    -- 10 Drain
    left_ring="Evanescence Ring",
    -- Dark MAB
    right_ring="Archon Ring",
    -- 25 Drain
    back={ name="Niht Mantle", augments={'Attack+6','Dark magic skill +6','"Drain" and "Aspir" potency +25',}},
    -- TODO 5 Drain Austerity Belt +1 (AH)
    -- TODO 3 Drain Hirudinera (Lamprey)
    -- TODO Erra Pendant (Omen)
})

sets.midcast["Drain II"] = sets.midcast.Drain
sets.midcast["Drain III"] = sets.midcast.Drain


-- 
-- Dread Spikes
-- 
sets.midcast["Dread Spikes"] = set_combine(sets.midcast.Default, {
    -- HP
    head="Ratri Sallet",
    -- Spikes +45
    body="Heath. Cuirass +2",
    -- HP
    hands="Ratri Gadlings",
    -- HP
    legs="Ratri Cuisses",
    -- 20 Duration
    feet="Ratri Sollerets",
    -- % HP
    waist="Plat. Mog. Belt",
    -- HP
    left_ear="Alabaster Earring",
    -- HP
    right_ear="Tuisto Earring",
    -- HP
    left_ring="Moonbeam Ring",
})


-- 
-- Elemental Nukes
-- 
sets.midcast.Nuking = sets.midcast.MAB