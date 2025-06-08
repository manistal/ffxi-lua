--
-- WHM Lua by MigsDank
-- 

sets = {}

--[[
TODO List
Empyrean +2 Legs > Body > Helm > Feet > Hands
Valkrum UNM Regal Pumps +5% Fast Cast
Orison Neck Abyssea
Kaykaus Boots 
]]

--
-- Weapon Sets
-- 
sets.weapons = {}
sets.weapons.List = {
    "QuellerRod",
}

sets.weapons["QuellerRod"] = {
    main="Queller Rod",
    --sub="Shield", -- Where?? Diamond Aspis?
}

-- Idle/DT Base Set
sets.idle = {}
sets.idle.List = {
    "Default",
    "Refresh",
}

-- 38 Nyame, 39 Empy
-- 15 Accessories
sets.idle.Default = {
    -- 2% DT
    ammo="Staunch Tathlum",
    -- 7 DT
    head={ name="Nyame Helm", augments={'Path: B',}},
    -- TODO Empy Body (Refresh, noDT)
    -- 9 DT
    body={ name="Nyame Mail", augments={'Path: B',}},
    -- TODO Empty Hands (-10)
    -- 7 DT
    hands={ name="Nyame Gauntlets", augments={'Path: B',}},
    -- TODO Empy Legs (-12)
    -- 8 DT
    legs={ name="Nyame Flanchard", augments={'Path: B',}},
    -- TODO Empty Feet (-10)
    -- 7 DT
    feet={ name="Nyame Sollerets", augments={'Path: B',}},
    -- 6 DT
    neck={ name="Loricate Torque +1", augments={'Path: A',}},
    waist="Carrier's Sash",
    left_ear="Eabani Earring",
    right_ear="Odnowa Earring +1",
    -- 7 DT
    left_ring="Vocane Ring",
    right_ring="Inyanga Ring",
    -- 10 PDT
    back={ name="Alaunus's Cape", augments={'MND+20','Eva.+20 /Mag. Eva.+20','MND+10','"Fast Cast"+10','Phys. dmg. taken-10%',}},
}

-- Total:
sets.idle.Refresh = set_combine(sets.idle.Default, {
    -- Refresh +1
    head="Inyanga Tiara +2",
    -- Refresh +3
    --TODO Empy Body
    -- Refresh +1
    hands="Inyan. Dastanas +2",
    -- Refresh +1
    legs="Assid. Pants +1",
    -- Refresh +1
    feet="Inyan. Crackows +2",
    -- MEVA
    neck="Warder's Charm +1",
    -- MEVA
    waist="Carrier's Sash",
    -- Refresh +1
    right_ring="Inyanga Ring",
    -- MEVA
    back={ name="Alaunus's Cape", augments={'MND+20','Eva.+20 /Mag. Eva.+20','MND+10','"Fast Cast"+10','Phys. dmg. taken-10%',}},
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



-- 
-- Spell Precast Sets
--
sets.precast = {} 

--[[
Ebers Hat = 10
Empy Neck = 5
Regal Pumps (Valkrum UNM) = 5%
Total = 60% Fast Cast

]]

-- Fast Cast
sets.precast.FastCast = {
    -- 14 FC
    body="Inyanga Jubbah +2",
    -- 6 FC
    legs="Aya. Cosciales +2",

    -- 4 FC
    right_ring="Kishar Ring",
    -- 4 FC
    left_ear="Malignance Earring",
    -- 2 FC
    right_ear="Loquac. Earring",
    -- 10 FC
    back={ name="Alaunus's Cape", augments={'MND+20','Eva.+20 /Mag. Eva.+20','MND+10','"Fast Cast"+10','Phys. dmg. taken-10%',}},
}

-- 
-- Spell Midcast Sets
-- 
sets.midcast = {}

--[[
Queller = 10% Cure
EberCap = 19% cure
Neck = 7% Cure 
Earring = 5% cure
Kaykaus Boost = 15% Cure
Nourishing Earring = 3% Cure
]]

sets.midcast.Cure = {
    left_ear="Mendi. Earring",
}


sets.midcast.Curaga = {
    left_ear="Mendi. Earring",
}