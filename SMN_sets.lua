--
-- DRK Lua by MigsDank
-- 

sets = {}

--
-- Weapon Sets
-- 
sets.weapons = {}
sets.weapons.List = {
    "Espiritus",
    "Gridarvor",
    "Grioavolr"
}

sets.weapons["Espiritus"] = {
    main={ name="Espiritus", augments={'Summoning magic skill +15','Pet: Mag. Acc.+30','Pet: Damage taken -4%',}},
    sub="Vox Grip",
}


sets.weapons["Gridarvor"] = {
    main={ name="Gridarvor", augments={'Pet: Accuracy+70','Pet: Attack+70','Pet: "Dbl. Atk."+15',}},
    sub="Elan Strap",
}

sets.weapons["Grioavolr"] = {
    main={ name="Grioavolr", augments={'Blood Pact Dmg.+3','Pet: Mag. Acc.+15','Pet: "Mag.Atk.Bns."+15','DMG:+5',}},
    sub="Elan Strap",
}

-- Idle/DT Base Set
sets.idle = {}
sets.idle.Default = {
    ammo={ name="Epitaph", augments={'Path: A',}},
    head={ name="Nyame Helm", augments={'Path: B',}},
    body={ name="Nyame Mail", augments={'Path: B',}},
    hands={ name="Nyame Gauntlets", augments={'Path: B',}},
    legs={ name="Nyame Flanchard", augments={'Path: B',}},
    feet={ name="Nyame Sollerets", augments={'Path: B',}},
    neck={ name="Loricate Torque +1", augments={'Path: A',}},
    waist="Regal Belt",
    left_ear="Eabani Earring",
    right_ear={ name="Beck. Earring", augments={'System: 1 ID: 1676 Val: 0','Pet: Accuracy+10 Pet: Rng. Acc.+10','Pet: Mag. Acc.+10',}},
    left_ring="Vocane Ring",
    right_ring="Inyanga Ring",
    back={ name="Campestres's Cape", augments={'Pet: M.Acc.+20 Pet: M.Dmg.+20','"Fast Cast"+10',}},
}

-- Need -14 Perp >> Refresh >= DT
-- Current: 16
sets.idle.Perp = set_combine(sets.idle.Default, {
    -- Perp: -5
    main={ name="Gridarvor", augments={'Pet: Accuracy+70','Pet: Attack+70','Pet: "Dbl. Atk."+15',}},
    -- Refresh: +2
    head="Beckoner's Horn +1",
    -- Regain: +25
    neck="Caller's Pendant",
    -- Refresh +3
    body={ name="Apogee Dalmatica", augments={'MP+60','Pet: "Mag.Atk.Bns."+30','Blood Pact Dmg.+7',}},
    -- Skill +22
    hands="Lamassu Mitts +1",
    -- Perp: -3
    legs="Assid. Pants +1",
    -- Perp: -8
    feet={ name="Apogee Pumps", augments={'MP+60','Pet: "Mag.Atk.Bns."+30','Blood Pact Dmg.+7',}},
    -- Refresh+1
    right_ear={ name="Beck. Earring", augments={'System: 1 ID: 1676 Val: 0','Pet: Accuracy+10 Pet: Rng. Acc.+10','Pet: Mag. Acc.+10',}},
    -- Refresh+1
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

sets.midcast.Default = {
    -- Cure
    left_ear="Mendi. Earring",
}


-- 
-- Blood Pact Sets
-- 
sets.bp = {}

-- Need 15 BP I, 15 BP II
-- BPD Cap >> Summon Skill >> other
sets.bp.Precast = {
    -- BP II -2s, Skill 15
    main={ name="Espiritus", augments={'Summoning magic skill +15','Pet: Mag. Acc.+30','Pet: Damage taken -4%',}},
    -- Skill 3
    sub="Vox Grip",
    -- BP II: -5s
    ammo={ name="Epitaph", augments={'Path: A',}},
    -- Avatar's Favor
    head="Beckoner's Horn +1",
    -- BP I: -6s
    body="Con. Doublet +1",
    -- BP I: -5s
    hands="Con. Bracers",
    -- BP 1: -4
    feet="Smn. Pigaches +2",
}

-- BP Dmg > Magic Dmg > Pet Stats
sets.bp.Rage = {
    -- BPDmg: MGKATK
    main={ name="Grioavolr", augments={'Blood Pact Dmg.+3','Pet: Mag. Acc.+15','Pet: "Mag.Atk.Bns."+15','DMG:+5',}},
    -- BPDmg: 3
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

sets.bp.Ward = {
    -- BP II -2s, Skill 15
    main={ name="Espiritus", augments={'Summoning magic skill +15','Pet: Mag. Acc.+30','Pet: Damage taken -4%',}},
    -- Skill +3
    sub="Vox Grip",
    -- Skill +13
    head="Beckoner's Horn +1",
    -- Skill +9
    neck="Caller's Pendant",
    -- Skill +22
    hands="Lamassu Mitts +1",
    -- Avatar Lv+1
    right_ear={ name="Beck. Earring", augments={'System: 1 ID: 1676 Val: 0','Pet: Accuracy+10 Pet: Rng. Acc.+10','Pet: Mag. Acc.+10',}},
}