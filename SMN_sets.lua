--
-- DRK Lua by MigsDank
-- 

sets = {}

--
-- Weapon Sets
-- 
sets.weapons = {}
sets.weapons.List = {
    "Gridarvor",
    "Espiritus",
    "Grioavolr"
}

sets.weapons["Espiritus"] = {
    main={ name="Espiritus", augments={'Summoning magic skill +15','Pet: Mag. Acc.+30','Pet: Damage taken -4%',}},
    sub="Vox Grip",
    ammo={ name="Epitaph", augments={'Path: A',}},
}


sets.weapons["Gridarvor"] = {
    main={ name="Gridarvor", augments={'Pet: Accuracy+70','Pet: Attack+70','Pet: "Dbl. Atk."+15',}},
    sub="Elan Strap",
    ammo={ name="Epitaph", augments={'Path: A',}},
}

sets.weapons["Grioavolr"] = {
    main={ name="Grioavolr", augments={'Blood Pact Dmg.+3','Pet: Mag. Acc.+15','Pet: "Mag.Atk.Bns."+15','DMG:+5',}},
    sub="Elan Strap",
    ammo={ name="Epitaph", augments={'Path: A',}},
}


-- Idle/DT Base Set
sets.idle = {}
sets.idle.List = {
    "Default",
    "Refresh",
}
sets.idle.Default = {
    head={ name="Nyame Helm", augments={'Path: B',}},
    body={ name="Nyame Mail", augments={'Path: B',}},
    hands={ name="Nyame Gauntlets", augments={'Path: B',}},
    legs={ name="Nyame Flanchard", augments={'Path: B',}},
    feet={ name="Nyame Sollerets", augments={'Path: B',}},
    neck={ name="Loricate Torque +1", augments={'Path: A',}},
    waist="Carrier's Sash",
    left_ear="Eabani Earring",
    right_ear={ name="Beck. Earring", augments={'System: 1 ID: 1676 Val: 0','Pet: Accuracy+10 Pet: Rng. Acc.+10','Pet: Mag. Acc.+10',}},
    left_ring="Vocane Ring",
    right_ring="Inyanga Ring",
    back={ name="Campestres's Cape", augments={'Pet: M.Acc.+20 Pet: M.Dmg.+20','"Fast Cast"+10',}},
}

-- Total: 12 Refresh
sets.idle.Refresh = {
    -- Refresh +3
    head="Beckoner's Horn +2",
    -- Refresh +3
    body={ name="Apogee Dalmatica", augments={'MP+60','Pet: "Mag.Atk.Bns."+30','Blood Pact Dmg.+7',}},
    -- Refresh +1
    hands="Inyan. Dastanas +2",
    -- Refresh +1
    legs="Assid. Pants +1",
    -- Refresh +2
    feet="Baayami Sabots",
    -- MEVA
    neck="Warder's Charm +1",
    -- MEVA
    waist="Carrier's Sash",
    -- Refresh +1
    right_ear={ name="Beck. Earring", augments={'System: 1 ID: 1676 Val: 0','Pet: Accuracy+10 Pet: Rng. Acc.+10','Pet: Mag. Acc.+10',}},
    -- Refresh +1
    right_ring="Inyanga Ring",
    -- MEVA
    back={ name="Campestres's Cape", augments={'Pet: M.Acc.+20 Pet: M.Dmg.+20','Eva.+20 /Mag. Eva.+20','"Fast Cast"+10','Phys. dmg. taken-10%',}},
}

-- Need -14 Perp >> Refresh || Skill >= DT
-- Current: 16
sets.perp = {}
sets.perp.List = {
    "Skill",
    "Refresh",
}
-- Total Skill: 127
-- L99 Base Skill: 430
-- Current Skill: 557
-- +6 Bench: 575
-- +7 Bench: 670
-- TODO: Need Evans Earring for -1Perp
sets.perp.Skill = set_combine(sets.idle.Default, {
    -- Perp: -5
    main={ name="Gridarvor", augments={'Pet: Accuracy+70','Pet: Attack+70','Pet: "Dbl. Atk."+15',}},
    -- Skill +18, Refresh +3
    head="Beckoner's Horn +2",
    -- Skill +9
    neck="Caller's Pendant",
    -- Skill +19, Perp: -7
    body="Beck. Doublet +2",
    -- Skill +22
    hands="Lamassu Mitts +1",
    -- Skill +25
    legs="Beck. Spats +2",
    -- Skill +24, Refresh +2
    feet="Baayami Sabots",
    -- Refresh +1
    right_ear={ name="Beck. Earring", augments={'System: 1 ID: 1676 Val: 0','Pet: Accuracy+10 Pet: Rng. Acc.+10','Pet: Mag. Acc.+10',}},
    -- Skill +10, Perp: -1
    left_ring="Evoker's Ring",
    -- Refresh+1
    right_ring="Inyanga Ring",
})

-- TODO: Need Carby Unity Gloves for +Refresh
sets.perp.Refresh = set_combine(sets.idle.Default, {
    -- Perp: -5
    main={ name="Gridarvor", augments={'Pet: Accuracy+70','Pet: Attack+70','Pet: "Dbl. Atk."+15',}},
    -- Skill +18, Refresh +3
    head="Beckoner's Horn +2",
    -- Skill +9
    neck="Caller's Pendant",
    -- Skill +19, Perp: -7
    body="Beck. Doublet +2",
    -- Skill +22
    hands="Lamassu Mitts +1",
    -- Perp -3, Refresh +1
    legs="Assid. Pants +1",
    -- Skill +24, Refresh +2
    feet="Baayami Sabots",
    -- Refresh +1
    right_ear={ name="Beck. Earring", augments={'System: 1 ID: 1676 Val: 0','Pet: Accuracy+10 Pet: Rng. Acc.+10','Pet: Mag. Acc.+10',}},
    -- Skill +10, Perp: -1
    left_ring="Evoker's Ring",
    -- Refresh +1
    right_ring="Inyanga Ring",
})

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

-- 
-- Job Abilities
-- 
sets.ja = {}

sets.ja["Astral Flow"] = {
    head="Smn. Horn +2",
}


-- 
-- Spell Precast Sets
--
sets.precast = {} 

-- Fast Cast
sets.precast.FastCast = {
    body="Inyanga Jubbah +2",
    left_ear="Loquac. Earring",
    right_ear="Malignance Earring",
    back={ name="Campestres's Cape", augments={'Pet: M.Acc.+20 Pet: M.Dmg.+20','"Fast Cast"+10',}},
}

-- 
-- Spell Midcast Sets
-- 
sets.midcast = {}

sets.midcast.Cure = {
    left_ear="Mendi. Earring",
}


-- 
-- Blood Pact Sets
-- 
sets.bp = {}

-- Need 15 BP I, 15 BP II
-- BPD Cap >> Summon Skill >> other
-- Current Skill: 510
-- With Chest Upgrade: +46
-- Next Benchmark: 575
sets.bp.Precast = {
    -- BP II -2s, Skill 15
    main={ name="Espiritus", augments={'Summoning magic skill +15','Pet: Mag. Acc.+30','Pet: Damage taken -4%',}},
    -- Skill 3
    sub="Vox Grip",
    -- BP II: -5s
    ammo={ name="Epitaph", augments={'Path: A',}},
    -- Skill +18
    head="Beckoner's Horn +2",
    -- Skill +9
    neck="Caller's Pendant",
    -- BP I: -6s
    body="Con. Doublet +1",
    -- Skill +25
    legs="Beck. Spats +2",

    -- BP I: -5s
    hands="Con. Bracers",
    -- X Skill +22
    -- TODO UPGRADE CHEST: hands="Lamassu Mitts +1",

    -- BP 1: -4
    feet="Smn. Pigaches +2",
    -- X Skill +24
    -- TODO UPGRADE CHEST: feet="Baayami Sabots",

    -- Skill 10
    left_ring="Evoker's Ring",
    -- Refresh +1
    right_ear={ name="Beck. Earring", augments={'System: 1 ID: 1676 Val: 0','Pet: Accuracy+10 Pet: Rng. Acc.+10','Pet: Mag. Acc.+10',}},
    -- Skill +10
    left_ring="Evoker's Ring",
}

-- BP Dmg > Magic Dmg > Pet Stats
sets.bp.Rage = {
    -- BPDmg: 3, MGKATK 130
    main={ name="Grioavolr", augments={'Blood Pact Dmg.+3','Pet: Mag. Acc.+15','Pet: "Mag.Atk.Bns."+15','DMG:+5',}},
    -- BPDmg: 3, MGATK 5
    sub="Elan Strap",
    -- BPDmg: 7, MgATK 30
    head={ name="Apogee Crown", augments={'MP+60','Pet: "Mag.Atk.Bns."+30','Blood Pact Dmg.+7',}},
    -- BPDmg: 7, MgATK 30
    body={ name="Apogee Dalmatica", augments={'MP+60','Pet: "Mag.Atk.Bns."+30','Blood Pact Dmg.+7',}},
    -- BPDmg: 12
    body="Con. Doublet +1",
    -- BPDmg: 4
    hands={ name="Merlinic Dastanas", augments={'Pet: "Mag.Atk.Bns."+25','Blood Pact Dmg.+4','Pet: STR+9',}},
    -- BPDmg: 8
    feet={ name="Apogee Pumps", augments={'MP+60','Pet: "Mag.Atk.Bns."+30','Blood Pact Dmg.+7',}},
    -- MGATK: 9
    waist="Regal Belt",
    -- BPDmg: 5
    back={ name="Campestres's Cape", augments={'Pet: M.Acc.+20 Pet: M.Dmg.+20','"Fast Cast"+10',}},
    -- BPDmg: 3
    left_ring="Varar Ring",
    -- BPDmg: 3
    right_ring="Varar Ring",
    -- BPDmg: 3
    right_ear={ name="Beck. Earring", augments={'System: 1 ID: 1676 Val: 0','Pet: Accuracy+10 Pet: Rng. Acc.+10','Pet: Mag. Acc.+10',}},
}

-- Current Skill: 575
-- Next Benchmark: 670
sets.bp.Ward = {
    -- Skill 15
    main={ name="Espiritus", augments={'Summoning magic skill +15','Pet: Mag. Acc.+30','Pet: Damage taken -4%',}},
    -- Skill +3
    sub="Vox Grip",
    -- Skill +18, Refresh +3
    head="Beckoner's Horn +2",
    -- Skill +9
    neck="Caller's Pendant",
    -- Skill +19, Perp: -7
    body="Beck. Doublet +2",
    -- Skill +22
    hands="Lamassu Mitts +1",
    -- Skill +25
    legs="Beck. Spats +2",
    -- Skill +24, Refresh +2
    feet="Baayami Sabots",
    -- Refresh +1
    right_ear={ name="Beck. Earring", augments={'System: 1 ID: 1676 Val: 0','Pet: Accuracy+10 Pet: Rng. Acc.+10','Pet: Mag. Acc.+10',}},
    -- Skill +10, Perp: -1
    left_ring="Evoker's Ring",
}