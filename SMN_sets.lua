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
    sub="Kaja Grip",
    ammo={ name="Epitaph", augments={'Path: A',}},
}


sets.weapons["Gridarvor"] = {
    main={ name="Gridarvor", augments={'Pet: Accuracy+70','Pet: Attack+70','Pet: "Dbl. Atk."+15',}},
    sub="Kaja Grip",
    ammo={ name="Epitaph", augments={'Path: A',}},
}

sets.weapons["Grioavolr"] = {
    main={ name="Grioavolr", augments={'Blood Pact Dmg.+3','Pet: Mag. Acc.+15','Pet: "Mag.Atk.Bns."+15','DMG:+5',}},
    sub="Kaja Grip",
    ammo={ name="Epitaph", augments={'Path: A',}},
}


-- Idle/DT Base Set
sets.idle = {}
sets.idle.List = {
    "Default",
    "Refresh",
}
sets.idle.Default = {
    head="Beckoner's Horn +2",
    body="Bunzi's Robe",
    hands="Bunzi's Gloves",
    legs="Bunzi's Pants",
    feet={ name="Bunzi's Sabots", augments={'Path: A',}},
    neck="Warder's Charm +1",
    waist="Carrier's Sash",
    left_ear="Eabani Earring",
    -- Refresh +2 / DT 4
    right_ear={ name="Beck. Earring +1", augments={'System: 1 ID: 1676 Val: 0','Pet: Accuracy+12 Pet: Rng. Acc.+12','Pet: Mag. Acc.+12','Damage taken-4%',}},
    left_ring="Murky Ring",
    right_ring="Shneddick Ring",
    back={ name="Campestres's Cape", augments={'Pet: M.Acc.+20 Pet: M.Dmg.+20','Eva.+20 /Mag. Eva.+20','"Fast Cast"+10','Phys. dmg. taken-10%',}},
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
    -- Refresh +2
    right_ear={ name="Beck. Earring +1", augments={'System: 1 ID: 1676 Val: 0','Pet: Accuracy+12 Pet: Rng. Acc.+12','Pet: Mag. Acc.+12','Damage taken-4%',}},
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
    -- Skill +7, Perp 2
    waist="Lucidity Sash",
    -- Refresh +2
    right_ear={ name="Beck. Earring +1", augments={'System: 1 ID: 1676 Val: 0','Pet: Accuracy+12 Pet: Rng. Acc.+12','Pet: Mag. Acc.+12','Damage taken-4%',}},
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
    -- Refresh +2
    right_ear={ name="Beck. Earring +1", augments={'System: 1 ID: 1676 Val: 0','Pet: Accuracy+12 Pet: Rng. Acc.+12','Pet: Mag. Acc.+12','Damage taken-4%',}},
    -- Skill +10, Perp: -1
    left_ring="Evoker's Ring",
    -- Refresh +1
    right_ring="Inyanga Ring",
})

sets.perp.MEVA = set_combine(sets.idle.Default, {
    -- Perp: -5
    main={ name="Gridarvor", augments={'Pet: Accuracy+70','Pet: Attack+70','Pet: "Dbl. Atk."+15',}},
    -- Skill +18, Refresh +3
    head="Beckoner's Horn +2",
    -- Skill +9
    neck="Caller's Pendant",
    -- Skill +19, Perp: -7
    body="Beck. Doublet +2",
    -- Skill +25
    legs="Beck. Spats +2",
    -- Refresh +2
    right_ear={ name="Beck. Earring +1", augments={'System: 1 ID: 1676 Val: 0','Pet: Accuracy+12 Pet: Rng. Acc.+12','Pet: Mag. Acc.+12','Damage taken-4%',}},
    -- Skill +10, Perp: -1
    left_ring="Evoker's Ring",
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
    head={ name="Bunzi's Hat", augments={'Path: A',}},
    body="Beck. Doublet +2",
    hands="Bunzi's Gloves",
    legs={ name="Nyame Flanchard", augments={'Path: B',}},
    feet="Beck. Pigaches +2",
    neck="Null Loop",
    -- TODO NULL BELT
    waist="Windbuffet Belt",
    left_ear="Telos Earring",
    right_ear={ name="Beck. Earring +1", augments={'System: 1 ID: 1676 Val: 0','Pet: Accuracy+12 Pet: Rng. Acc.+12','Pet: Mag. Acc.+12','Damage taken-4%',}},
    left_ring="Chirich Ring",
    right_ring="Chirich Ring",
    back="Null Shawl",
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

sets.ja["Mana Cede"] = {
    hands="Beck. Bracers +2",
}

sets.ja["Elemental Siphon"] = {
    feet="Beck. Pigaches +2",
}


-- 
-- Spell Precast Sets
--
sets.precast = {} 

-- Fast Cast
sets.precast.FastCast = {
    -- 5 FC
    main="Mpaca's Staff",
    -- 2 FC
    ammo="Incantor Stone",
    -- 13 FC
    head={ name="Merlinic Hood", augments={'"Fast Cast"+5','"Mag.Atk.Bns."+1',}},
    -- 14 FC
    body="Inyanga Jubbah +2",
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
    back={ name="Campestres's Cape", augments={'Pet: M.Acc.+20 Pet: M.Dmg.+20','"Fast Cast"+10',}},
}

-- 
-- Spell Midcast Sets
-- 
sets.midcast = {}

sets.midcast.Cure = {
    -- 10 Cure, +Weather
    main="Chatoyant Staff",
    sub="Kaja Grip",
    -- 10 Cure I, 12 Conserve MP
    head={ name="Vanya Hood", augments={'MND+10','Spell interruption rate down +15%','"Conserve MP"+6',}},
    -- 15 Cure I
    body="Bunzi's Robe",
    -- 12 Conserve MP
    legs={ name="Vanya Slops", augments={'MND+10','Spell interruption rate down +15%','"Conserve MP"+6',}},
    --  10 Cure I, 6 Conserve MP
    feet={ name="Vanya Clogs", augments={'"Cure" potency +5%','"Cure" spellcasting time -15%','"Conserve MP"+6',}},
    -- 5 Cure I
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
    -- BP I: -15s
    body="Con. Doublet +4",
    -- Skill +25
    legs="Beck. Spats +2",
    -- Skill +22
    hands="Lamassu Mitts +1",
    -- Skill +24
    feet="Baayami Sabots",
    -- Skill +10
    neck="Incanter's Torque",
    -- Skill +7
    waist="Lucidity Sash",
    -- Skill 10
    left_ring="Evoker's Ring",
    -- TODO: Better earring for Skill?
    right_ear={ name="Beck. Earring +1", augments={'System: 1 ID: 1676 Val: 0','Pet: Accuracy+12 Pet: Rng. Acc.+12','Pet: Mag. Acc.+12','Damage taken-4%',}},
    -- Skill +10
    left_ring="Evoker's Ring",
    -- BP II: -3s
    back={ name="Conveyance Cape", augments={'Summoning magic skill +1','Pet: Enmity+11','Blood Pact Dmg.+1','Blood Pact ab. del. II -3',}},
}

-- BP Default 
-- BPDMG => Pet ACC
sets.bp.Rage = {
    -- BPDmg: 3, MGKATK 130
    main={ name="Grioavolr", augments={'Blood Pact Dmg.+3','Pet: Mag. Acc.+15','Pet: "Mag.Atk.Bns."+15','DMG:+5',}},
    -- BPDmg: 3, MGATK 5
    sub="Elan Strap",
    -- BPDmg: 7, MgATK 30
    head={ name="Apogee Crown", augments={'MP+60','Pet: "Mag.Atk.Bns."+30','Blood Pact Dmg.+7',}},
    -- BPDmg: 16
    body="Con. Doublet +4",
    -- BPDmg: 4
    --hands={ name="Merlinic Dastanas", augments={'Pet: "Mag.Atk.Bns."+25','Blood Pact Dmg.+4','Pet: STR+9',}},
    -- BPDmg: 8, ACC
    hands="Beck. Bracers +2",
    -- TPBonus, Blood Boon, ACC/MACC
    legs="Beck. Spats +2",
    -- BPDmg: 8, MAB
    --feet={ name="Apogee Pumps", augments={'MP+60','Pet: "Mag.Atk.Bns."+30','Blood Pact Dmg.+7',}},
    -- BPDmg: 8, ACC
    feet="Beck. Pigaches +2",
    -- DBLATK
    neck="Shulmanu Collar",
    -- MGATK: 9
    waist="Regal Belt",
    -- BPDmg: 5
    back={ name="Campestres's Cape", augments={'Pet: M.Acc.+20 Pet: M.Dmg.+20','"Fast Cast"+10',}},
    -- BPDmg: 3
    left_ring="Varar Ring",
    -- BPDmg: 3
    right_ring="Varar Ring",
    -- BPDmg: 8
    right_ear={ name="Beck. Earring +1", augments={'System: 1 ID: 1676 Val: 0','Pet: Accuracy+12 Pet: Rng. Acc.+12','Pet: Mag. Acc.+12','Damage taken-4%',}},
    -- DBLKATK
    left_ear="Sroda Earring",
}

--[[
TODO:
- Split into Phys / Flaming Crush / MAB
- Convokers Bracers (PHYS)
- Beckoners Pigaches (BOTH)
- Enticers Pants (MAB)
- SRODA Ring (PHYS/FC?)
- Helios Helm / Pants (PHYS)
    -- BPDmg: 7, MgATK 30
    body={ name="Apogee Dalmatica", augments={'MP+60','Pet: "Mag.Atk.Bns."+30','Blood Pact Dmg.+7',}},
]]--


-- Current Skill: 575
-- Next Benchmark: 670
sets.bp.Ward = {
    -- Skill 15
    main={ name="Espiritus", augments={'Summoning magic skill +15','Pet: Mag. Acc.+30','Pet: Damage taken -4%',}},
    -- Skill +3
    sub="Vox Grip",
    -- Skill +18, Refresh +3
    head="Beckoner's Horn +2",
    -- Skill +19, Perp: -7
    body="Beck. Doublet +2",
    -- Skill +22
    hands="Lamassu Mitts +1",
    -- Skill +25
    legs="Beck. Spats +2",
    -- Skill +24, Refresh +2
    feet="Baayami Sabots",
    -- Skill +10
    neck="Incanter's Torque",
    -- Skill +7
    waist="Lucidity Sash",
    -- Skill +10, Perp: -1
    left_ring="Evoker's Ring",
    -- Avatar level?
    right_ear={ name="Beck. Earring +1", augments={'System: 1 ID: 1676 Val: 0','Pet: Accuracy+12 Pet: Rng. Acc.+12','Pet: Mag. Acc.+12','Damage taken-4%',}},
    -- Skill 1
    back={ name="Conveyance Cape", augments={'Summoning magic skill +1','Pet: Enmity+11','Blood Pact Dmg.+1','Blood Pact ab. del. II -3',}},
}