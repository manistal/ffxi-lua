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
    "Gridarvor"
}

sets.weapons["Espiritus"] = {
    main="Espiritus",
    sub="Elan Strap",
}


sets.weapons["Gridarvor"] = {
    main={ name="Gridarvor", augments={'Pet: Accuracy+70','Pet: Attack+70','Pet: "Dbl. Atk."+15',}},
    sub="Elan Strap",
}

-- Idle/DT Base Set
sets.idle = {}
sets.idle.Default = {
    ammo="Staunch Tathlum",
    head={ name="Nyame Helm", augments={'Path: B',}},
    body={ name="Nyame Mail", augments={'Path: B',}},
    hands={ name="Nyame Gauntlets", augments={'Path: B',}},
    legs={ name="Nyame Flanchard", augments={'Path: B',}},
    feet={ name="Nyame Sollerets", augments={'Path: B',}},
    neck={ name="Loricate Torque +1", augments={'Path: A',}},
    waist="Regal Belt",
    left_ear="Eabani Earring",
    right_ear="Malignance Earring",
    left_ring="Vocane Ring",
    right_ring="Warden's Ring",
    back={ name="Campestres's Cape", augments={'Pet: M.Acc.+20 Pet: M.Dmg.+20','"Fast Cast"+10',}},
}

-- Need -14 Perp >> Refresh >= DT
-- Current: 16
sets.idle.Perp = {
    -- Refresh: +2
    head="Beckoner's Horn +1",
    -- Perp: -5
    main={ name="Gridarvor", augments={'Pet: Accuracy+70','Pet: Attack+70','Pet: "Dbl. Atk."+15',}},
    -- Perp: -3
    legs="Assid. Pants +1",
    -- Perp: -8
    feet={ name="Apogee Pumps", augments={'MP+60','Pet: "Mag.Atk.Bns."+30','Blood Pact Dmg.+7',}},
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
}


-- 
-- Blood Pact Sets
-- 
sets.bp = {}

-- Need 15 BP I, 15 BP II
-- BPD Cap >> Summon Skill >> other
sets.bp.Precast = {
    -- Avatar's Favor
    head="Beckoner's Horn +1",
    -- BP II: -2s
    main="Espiritus",
    -- BP I: -6s
    body="Con. Doublet +1",
    -- BP I: -5s
    hands="Con. Bracers",
    -- BP 1: -4
    feet="Smn. Pigaches +2",
}

-- BP Dmg > Magic Dmg > Pet Stats
sets.bp.Rage = {
    -- BPDmg: 3
    main="Espiritus",
    -- BPDmg: 3
    sub="Elan Strap",
    -- BPDmg: 12
    body="Con. Doublet +1",
    -- BPDmg: 8
    feet={ name="Apogee Pumps", augments={'MP+60','Pet: "Mag.Atk.Bns."+30','Blood Pact Dmg.+7',}},
    waist="Regal Belt",
    -- BPDmg: 5
    back={ name="Campestres's Cape", augments={'Pet: M.Acc.+20 Pet: M.Dmg.+20','"Fast Cast"+10',}},
}

sets.bp.Ward = {
    -- BPDmg: 3
    main="Espiritus",
    -- BPDmg: 3
    sub="Elan Strap",
    -- BPDmg: 12
    body="Con. Doublet +1",
    -- BPDmg: 8
    feet={ name="Apogee Pumps", augments={'MP+60','Pet: "Mag.Atk.Bns."+30','Blood Pact Dmg.+7',}},
    waist="Regal Belt",

    back={ name="Campestres's Cape", augments={'Pet: M.Acc.+20 Pet: M.Dmg.+20','"Fast Cast"+10',}},
}