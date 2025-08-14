--
-- BRD Lua by MigsDank
-- 

sets = {}

--[[
TODO List
]]


--[[
JSE
Artifact: (Enfeeble/MACC)

Relic (Swaps)

Empyrean (EVERYTHING)

]]

--
-- Weapon Sets
-- 
sets.weapons = {}
sets.weapons.List = {
    "Savage-Spam",
    "Tauret-Kali",
    "DI",
    "MACC",
    "Kali-Flayer",
    "Tauret-flayer",
}


sets.weapons["Savage-Spam"] = {
    main="Naegling",
    sub="Skinflayer",
}

sets.weapons["Tauret-Kali"] = { 
    main="Tauret",
    sub={ name="Kali", augments={'MP+60','Mag. Acc.+20','"Refresh"+1',}},
}

sets.weapons["DI"] = { 
    main="Skinflayer",
    sub="Voluspa Knife",
}

sets.weapons["MACC"] = { 
    main="Naegling",
    sub="Tauret",
}

sets.weapons["Kali-Flayer"] = { 
    main={ name="Kali", augments={'MP+60','Mag. Acc.+20','"Refresh"+1',}},
    sub="Skinflayer",
}

sets.weapons["Tauret-flayer"] = { 
    main="Tauret",
    sub="Skinflayer",
}



-- Idle/DT Base Set
sets.idle = {}
sets.idle.List = {
    "Default",
    "Refresh",
}

-- 38 Nyame, 39 Empy
-- 15 Accessories
--[[

    main="Bunzi's Rod",
    head={ name="Bunzi's Hat", augments={'Path: A',}},
    body="Bunzi's Robe",
    hands="Bunzi's Gloves",
    legs="Bunzi's Pants",
    feet={ name="Bunzi's Sabots", augments={'Path: A',}},
]]
sets.idle.Default = {
    -- TODO: Better idle instrument?
    range={ name="Linos", augments={'All Songs+2',}},
    -- 7 DT
    head={ name="Bunzi's Hat", augments={'Path: A',}},
    -- ??
    body="Bunzi's Robe",
    -- 8 DT
    hands="Bunzi's Gloves",
    -- ???
    legs="Bunzi's Pants",
    -- 6 DT
    feet={ name="Bunzi's Sabots", augments={'Path: A',}},
    -- MEVA
    neck="Warder's Charm +1",
    -- MEVA
    waist="Carrier's Sash",
    -- HP
    left_ear="Eabani Earring",
    -- TODO NEED BETTER EAR
    right_ear="Ethereal earring",
    -- 7 DT
    left_ring="Vocane Ring",
    -- HP, DT: -4
    right_ring="Moonbeam Ring",
    -- TODO Finish AMBU CAPE
    back={ name="Intarabus's Cape", augments={'CHR+1','Eva.+20 /Mag. Eva.+20','"Fast Cast"+10',}},
}

sets.idle.Refresh = set_combine(sets.idle.Default, {
    -- Refresh +1
    head="Inyanga Tiara +2",
    -- Refresh +1
    body="Inyanga Jubbah +2",
    -- Refresh +1
    hands="Inyan. Dastanas +2",
    -- Refresh +1
    legs="Assid. Pants +1",
    -- Refresh +1
    feet="Inyan. Crackows +2",
    -- 6 DT
    neck={ name="Loricate Torque +1", augments={'Path: A',}},
    -- Refresh
    right_ring="Inyanga Ring",
})

-- 
-- Job Abilities
-- 
sets.ja = {}

-- TODO RELIC



-- 
-- Spell Precast Sets
--
sets.precast = {} 

--[[
Current = 60% Fast Cast (71% cast time)
Options:
Empy Neck = 5
Regal Pumps (Valkrum UNM) = 5% (+2)
Wistful Belt = 3
JSE Neck+1 with RP = 8
]]

-- Fast Cast
sets.precast.FastCast = set_combine(sets.idle.Default, {
    -- 7FC
    main={ name="Kali", augments={'MP+60','Mag. Acc.+20','"Refresh"+1',}},
    -- 14 FC
    body="Inyanga Jubbah +2",
    -- 7 FC, 4 Cure Speed
    hands={ name="Gende. Gages +1", augments={'Phys. dmg. taken -4%','Magic dmg. taken -2%','"Cure" spellcasting time -4%',}},
    -- 6 FC
    legs="Aya. Cosciales +2",
    -- 5 FC
    feet="Regal Pumps +1",
    -- 4 FC
    right_ring="Kishar Ring",
    -- 4 FC
    left_ear="Malignance Earring",
    -- 2 FC
    right_ear="Loquac. Earring",
    -- 5 FC
    waist="Embla Sash",
    -- 10 FC
    back={ name="Intarabus's Cape", augments={'CHR+1','Eva.+20 /Mag. Eva.+20','"Fast Cast"+10',}},
})

sets.precast.SongCast = set_combine(sets.precast.FastCast, {
    -- TODO Empy Head 

    -- Song Cast: -13
    feet={ name="Telchine Pigaches", augments={'Song spellcasting time -7%',}},
})

-- Songs Midcast
------------------------
sets.songs = {}
sets.songs.List = {
    "MaxPotency",
    "BonusSongs",
}

sets.songs.BonusSongs = {
    range={ name="Terpander", augments={'HP+30','Mag. Acc.+10','Damage Taken -3%',}},
}

sets.songs.MaxPotency = {
    -- Duration: 5
    main={ name="Kali", augments={'MP+60','Mag. Acc.+20','"Refresh"+1',}},
    -- All Songs: 3
    range={ name="Linos", augments={'All Songs+2',}},
    -- All Songs: 2
    neck="Moonbow Whistle",
    -- TODO EMPY HEAD Madrigal: 1
    -- TODO EMPY HANDS Skill, March: 1
    -- TODO EMPY Body Skill, Duration, Minuet: 1
    legs="Inyanga Shalwar +2",

}

-- TODO Song Specific Swaps
-- Ballad - Empy Legs for Bonus, but dont
-- Minne - Su3+1 Legs Or Bust
-- March - No Swap
-- Honor March - Maysaras
-- Scherzo - Empy Feet for Bonus
-- Carol - Su3 Hands
-- Mambo - Su3 Feet
-- Etude - Su3 Head
-- Paeon - Artifact Head

-- Madrigal - 
sets.songs.Madrigal = set_combine(sets.songs.MaxPotency, {
    back={ name="Intarabus's Cape", augments={'CHR+1','Eva.+20 /Mag. Eva.+20','"Fast Cast"+10',}},
})

sets.songs.Prelude = set_combine(sets.songs.MaxPotency, {
    -- TODO Empy Feet
    back={ name="Intarabus's Cape", augments={'CHR+1','Eva.+20 /Mag. Eva.+20','"Fast Cast"+10',}},
})


-- TODO LULLABY
-- TODO DEBUFF

-- 
-- Spell Midcast Sets
-- 
sets.midcast = {}


-- Cure/Healing/COnserveMP
-- Total: Cure I: 56, Cure II: 4
sets.midcast.Cure = {
    -- Cure I: 10, Cure II: 2
    main={ name="Queller Rod", augments={'Healing magic skill +15','"Cure" potency +10%','"Cure" spellcasting time -7%',}},
    -- Conserve MP: 4
    sub="Thuellaic Ecu +1",
    -- Cure II: 2
    hands="Theophany Mitts +2",
    -- Cure I: 15, Conserve MP: 6
    feet={ name="Kaykaus Boots", augments={'Mag. Acc.+15','"Cure" potency +5%','"Fast Cast"+3',}},
    -- Cure I: 5, Conserve MP: 2
    right_ear="Mendi. Earring",
}


-- Status Removal
----------------------
sets.midcast.StatusRemoval = {
}

-- TODO: Vanya Head, Vanya Feet
sets.midcast.Cursna = set_combine(sets.midcast.StatusRemoval, {
    -- Cursna: 15
    hands={ name="Fanatic Gloves", augments={'MP+35','"Conserve MP"+3','"Fast Cast"+3',}},
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
    -- Duration 5
    head={ name="Telchine Cap", augments={'Enh. Mag. eff. dur. +5',}},
    -- Duration 10
    body={ name="Telchine Chas.", augments={'Enh. Mag. eff. dur. +10',}},
    -- Duration 8
    hands={ name="Telchine Gloves", augments={'Enh. Mag. eff. dur. +8',}},
    -- Duration 10 
    waist="Embla Sash",
    
}


sets.midcast.Aquaveil = set_combine(sets.midcast.Enhancing, {
    -- Omen LUCK hands="Regal Cuffs",
    legs="Shedir Seraweels",
    -- AH Money waist="Emphatikos Rope",
})

sets.midcast.Stoneskin = set_combine(sets.midcast.Enhancing, {
    legs="Shedir Seraweels",
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
    body={ name="Nyame Mail", augments={'Path: B',}},
    hands="Bunzi's Gloves",
    legs={ name="Nyame Flanchard", augments={'Path: B',}},
    feet={ name="Nyame Sollerets", augments={'Path: B',}},
    -- TODO Dynamis Neck
    neck="Warder's Charm +1",
    -- TODO REIKAI YOTAI
    waist="Windbuffet Belt",
    left_ear="Eabani Earring",
    right_ear="Telos Earring",
    right_ring="Moonbeam Ring",
    -- TODO Second moonbeam ring
    left_ring="Chirich Ring",
    -- TODO AMBU CAPE
}

--
-- WS Sets 
-- 
sets.ws = {}
sets.ws.Default = {
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
