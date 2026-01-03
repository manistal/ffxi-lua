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
    head="Arbatel Bonnet +2",
    body="Arbatel Gown +2",
    hands="Arbatel Bracers +2",
    legs="Arbatel Pants +2",
    feet="Arbatel Loafers +2",
]]


--[[
]]--
-- Weapon Sets
-- 
sets.weapons = {}
sets.weapons.List = {
    "Mpaca",
    "BunziRod",
}

sets.weapons["Mpaca"] = {
    main="Mpaca's Staff",
    sub="Kaja Grip",
}

sets.weapons["BunziRod"] = {
    main="Bunzi's Rod",
    sub="Ammurapi Shield",
}

-- Idle/DT Base Set
sets.idle = {}
sets.idle.List = {
    "Default",
    "Refresh",
    "Sublimation",
}

-- 38 Nyame, 39 Empy
-- 15 Accessories
--[[
]]--
sets.idle.Default = {
    -- 2 DT - TODO Refresh
    --ammo="Staunch Tathlum +1",
    -- Refresh +1
    ammo="Homiliary",
    -- 7 DT
    head="Nyame Helm",
    -- Refresh, 10DT
    body="Arbatel Gown +2",
    -- 7 DT
    hands="Nyame Gauntlets",
    -- 5 DT
    legs="Agwu's Slops",
    -- 7 DT
    feet="Nyame Sollerets",
    -- 6 DT
    neck="Loricate Torque +1",
    -- MEVA
    waist="Carrier's Sash",
    -- HP / 5 DT
    left_ear="Alabaster Earring",
    -- Regen
    right_ear="Infused Earring",
    -- Refresh 
    left_ring="Stikini Ring +1",
    -- Speed
    right_ring="Shneddick Ring",
    -- MEVA 
    back="Null Shawl",
}

sets.idle.Sublimation = set_combine(sets.idle.Default, {
    -- Sublimation
    waist="Embla Sash",
})

-- Total: 
sets.idle.Refresh = set_combine(sets.idle.Default, {
    -- Refresh +1
    legs="Assid. Pants +1",
})

-- 
-- Job Abilities
-- 
sets.ja = {}

sets.ja["Perpetuance"] = {
    hands="Arbatel Bracers +2",
}

sets.ja["Ebullience"] = {
    head="Arbatel Bonnet +2",
}

sets.ja["Rapture"] = {
    head="Arbatel Bonnet +2",
}

-- 
-- Spell Precast Sets
--
sets.precast = {} 

--[[
Current = ~72% Fast Cast
Options:
Voltsurge Torque (4%)
Clerisy Strap +1 (3%)
Prolox Ring (1%)
]]

-- Fast Cast
sets.precast.FastCast = {
    -- 5 FC
    main="Mpaca's Staff",
    -- DT
    sub="Kaja Grip",
    -- 2 FC
    ammo="Incantor Stone",
    -- 13 FC
    head={ name="Merlinic Hood", augments={'"Fast Cast"+5','"Mag.Atk.Bns."+1',}},
    -- 10 FC
    body={ name="Merlinic Jubbah", augments={'"Mag.Atk.Bns."+30','"Fast Cast"+4','MND+9',}},
    -- 7 FC, 4 Cure Speed
    hands={ name="Gende. Gages +1", augments={'Phys. dmg. taken -4%','Magic dmg. taken -2%','"Cure" spellcasting time -4%',}},
    -- 7 FC
    legs="Agwu's Slops",
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
    back={ name="Lugh's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','"Fast Cast"+10',}},
}

-- 
-- Spell Midcast Sets
-- 
sets.midcast = {}

-- Cure/Healing/COnserveMP
-- Total: Cure I: 56, Cure II: 4
sets.midcast.Cure = {
    -- SIRD / DT
    ammo="Staunch Tathlum +1",
    -- Cure I: 11, Cure II: 2
    head={ name="Kaykaus Mitra +1", augments={'MP+80','Spell interruption rate down +12%','"Cure" spellcasting time -7%',}},
    -- Enmity -24
    body="Arbatel Gown +2",
    -- 12 Conserve MP
    legs={ name="Vanya Slops", augments={'MND+10','Spell interruption rate down +15%','"Conserve MP"+6',}},
    -- TODO Artifact Legs 
    -- legs="Academic's Pants +3",
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
    -- Cure I: 5, Conserve MP: 2
    left_ear="Mendi. Earring",
    -- FC / PDT
    back={ name="Lugh's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','"Fast Cast"+10',}},
}

sets.midcast.CureWeather = set_combine(sets.midcast.Cure, {
    -- 10 Cure, +Weather
    main="Chatoyant Staff",
    -- DT
    sub="Kaja Grip",
    -- Weather
    waist="Hachirin-no-Obi",
})

sets.midcast.Curaga = set_combine(sets.midcast.Cure, {
})

-- Status Removal
----------------------
sets.midcast.StatusRemoval = {
}

sets.midcast.Cursna = set_combine(sets.midcast.StatusRemoval, {
    -- TODO Fix Augment to Healing Skill
    head={ name="Vanya Hood", augments={'MND+10','Spell interruption rate down +15%','"Conserve MP"+6',}},
    -- TODO Relic Chest 
    -- body="Pedagogy Gown +3",
    -- Cursna: 15
    hands={ name="Fanatic Gloves", augments={'MP+35','"Conserve MP"+3','"Fast Cast"+3',}},
    -- 20 Healing magic, 5 Cursna
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

-- TODO RELIC LEGS
sets.midcast.BarSpell = set_combine(sets.midcast.Enhancing, {
})

sets.midcast.Regen = set_combine(sets.midcast.Enhancing, {
    -- TODO JSE SU4
    main="Bunzi's Rod",
    -- Duration 10
    sub="Ammurapi Shield",
    -- Potency 20
    head="Arbatel Bonnet +2",
    -- Duration 10
    body={ name="Telchine Chas.", augments={'Mag. Evasion+20','"Conserve MP"+2','Enh. Mag. eff. dur. +10',}},
    -- Perpentuance
    hands="Arbatel Bracers +2",
    -- Duration 7
    legs={ name="Telchine Braconi", augments={'"Conserve MP"+2','Enh. Mag. eff. dur. +7',}},
    -- Duration 8
    feet={ name="Telchine Pigaches", augments={'Song spellcasting time -7%','Enh. Mag. eff. dur. +8',}},
    -- Duration 10 
    waist="Embla Sash",
    -- Duration 15
    back={ name="Lugh's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','"Fast Cast"+10',}},
})

sets.midcast.Aquaveil = set_combine(sets.midcast.Enhancing, {
    legs="Shedir Seraweels",
    -- AH Money waist="Emphatikos Rope",
})

sets.midcast.Stoneskin = set_combine(sets.midcast.Enhancing, {
    legs="Shedir Seraweels",
})

-- Enfeebling
--------------------------
sets.midcast.Enfeebling = {
    -- ACC
    main="Bunzi's Rod",
    -- ACC
    sub="Ammurapi Shield",
    -- Duration
    right_ring="Kishar Ring", 
    -- ACC
    right_ear={ name="Arbatel Earring +1", augments={'System: 1 ID: 1676 Val: 0','Mag. Acc.+11','Enmity-1',}},
}

-- Nuking
--------------------------
sets.midcast.Nuke = {
    -- TODO GHASTLY TALTHUM AMMO SLOT
    -- Magic ATK Bonus
    main="Bunzi's Rod",
    -- Magic ATK Bonus
    sub="Ammurapi Shield",
    -- MAB / MACC
    head="Arbatel Bonnet +2",
    -- MAB / MACC
    body="Arbatel Gown +2",
    -- MAB / MACC
    hands="Arbatel Bracers +2",
    -- MAB / MACC
    legs="Arbatel Pants +2",
    -- MAB / MACC / 5 MB2
    feet="Arbatel Loafers +2",
    -- MACC -- TODO: JSE Neck
    neck="Null Loop",
    -- MAB / MACC - TODO Hachirin no obi
    waist="Eschan Stone",
    -- MAB
    left_ear="Malignance Earring",
    -- MACC
    right_ear={ name="Arbatel Earring +1", augments={'System: 1 ID: 1676 Val: 0','Mag. Acc.+11','Enmity-1',}},
    -- TODO RINGS
    -- Metamorph and Freke??
    -- MAB
    back={ name="Lugh's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','"Fast Cast"+10',}},
}

sets.midcast.MBurst = set_combine(sets.midcast.Nuke, {
    -- MAB / 7 MB
    head="Agwu's Cap",
    -- 8 MB
    hands="Agwu's Gages",
    -- 9 MB
    legs="Agwu's Slops",
})

--
-- TP Sets
--
sets.tp = {}

sets.tp.List = {
    "Default", 
}

sets.tp.Default = {
    ammo="Staunch Tathlum +1",
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
