--
-- DRK Lua by MigsDank
-- 

sets = {}

--
-- Weapon Sets
-- 
sets.weapons = {}
sets.weapons.List = {
    "Daggers Main",
    "Savage Spam",
}


sets.weapons["Savage Spam"] = {
    main="Naegling",
    sub="Skinflayer"
}

sets.weapons["Daggers Main"] = { 
    main="Tauret",
    sub="Skinflayer"
}

sets.weapons.Current = sets.weapons["Daggers Main"]

sets.TH = {
    hands={ name="Plun. Armlets +1", augments={'Enhances "Perfect Dodge" effect',}},
    ammo="Per. Lucky Egg",
}

-- Idle/DT Base Set
-- DT == 50
-- MEva >= Eva = Regen
-- Current DT: 51
sets.idle = {}
sets.idle.Default = {
    ammo="Yamarang",
    -- DT: -7
    head={ name="Nyame Helm", augments={'Path: B',}},
    -- DT: -6
    neck={ name="Loricate Torque +1", augments={'Path: A',}},
    -- DT: -9
    body={ name="Nyame Mail", augments={'Path: B',}},
    --DT: -7
    hands={ name="Nyame Gauntlets", augments={'Path: B',}},
    -- DT: -8
    legs={ name="Nyame Flanchard", augments={'Path: B',}},
    -- DT: -7
    feet={ name="Nyame Sollerets", augments={'Path: B',}},
    waist="Sailfi Belt +1",
    -- DT: -7
    left_ring="Vocane Ring",
    right_ring="Chirich Ring",
    left_ear="Sherida Earring",
    right_ear="Suppanomimi",
    back={ name="Toutatis's Cape", augments={'Accuracy+20 Attack+20','"Store TP"+10',}},
}

--
-- TP Sets
--
sets.tp = {}

sets.tp.List = {
    "Default",
    "TreasureHunter",
    "Hybrid",
    "FullDT",
}

-- DW > 11 for /nin 
-- DW > 21 for /nin, > 9 for haste samba
-- Haste = 25
-- TA > STP = DA > 
-- Currently 27 Haste, 10 DW
sets.tp.Default = {
    ammo="Yamarang",
    head={ name="Nyame Helm", augments={'Path: B',}},
    neck="Iskur Gorget",
    body={ name="Adhemar Jacket", augments={'DEX+10','AGI+10','Accuracy+15',}},
    hands={ name="Nyame Gauntlets", augments={'Path: B',}},
    legs={ name="Nyame Flanchard", augments={'Path: B',}},
    feet={ name="Herculean Boots", augments={'Attack+24','"Triple Atk."+3','Accuracy+12',}},
    waist="Sailfi Belt +1",
    left_ring="Rajas Ring",
    right_ring="Chirich Ring",
    left_ear="Sherida Earring",
    right_ear="Suppanomimi",
    back={ name="Toutatis's Cape", augments={'Accuracy+20 Attack+20','"Store TP"+10',}},
}
sets.tp.Current = sets.tp.Default

sets.tp.TreasureHunter = set_combine(sets.tp.Default, sets.TH)

sets.tp.Hybrid = set_combine(sets.tp.Default, {
    neck={ name="Loricate Torque +1", augments={'Path: A',}},
    left_ring="Vocane Ring",
    feet={ name="Nyame Sollerets", augments={'Path: B',}},
}) 

sets.tp.FullDT = sets.idle.Default



-- 
-- Precast Sets
--
sets.precast = {} 

sets.precast.FastCast = {
    hands={ name="Leyline Gloves", augments={'Accuracy+6','Mag. Acc.+2','"Mag.Atk.Bns."+6',}},
    right_ear="Loquac. Earring",
}

sets.precast.Ranged = {
    ranged="Antitail",
}


-- 
-- Midcast Sets
-- 
sets.midcast = {}


--
-- WS Sets 
-- 
sets.ws = {}

-- TP Bonus > WSD > Attack = Accuracy
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
-- Job Ability Sets
-- 
sets.ja = {}

sets.ja.Default = sets.TH

sets.ja["Perfect Dodge"] = {
    hands={ name="Plun. Armlets +1", augments={'Enhances "Perfect Dodge" effect',}},
}