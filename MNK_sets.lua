--
-- DRK Lua by MigsDank
-- 

sets = {}

--[[
    head="Bhikku Crown +2",
    body="Bhikku Cyclas +2",
    hands="Bhikku Gloves +2",
    legs="Bhikku Hose +2",
]]


--
-- Weapon Sets
-- 
sets.weapons = {}
sets.weapons.List = {
    "Karambit",
    "Staff",
}

sets.weapons.Karambit = {
    main="Kaja Knuckles",
}

sets.weapons.Staff = {
    main="Kaja Staff",
    -- TODO Flanged Grip (warder of justice)
}



-- Idle/DT Base Set
sets.idle = {}
sets.idle.Default = {
    -- DT: -2 
    ammo="Staunch Tathlum +1",
    -- DT: -7 
    head="Nyame Helm",
    -- DT: -10
    body="Hiza. Haramaki +2",
    -- DT: -8 
    hands="Nyame Gauntlets",
    -- DT: -9
    legs="Nyame Flanchard",
    -- DT: -6
    feet="Nyame Sollerets",
    -- MResist
    neck="Warder's Charm +1",
    -- MEVA/REGEN
    waist="Null Belt",
    -- HP/DT
    left_ear="Alabaster Earring",
    -- HP
    right_ear="Tuisto Earring",
    -- HP, DT: -4
    left_ring="Murky Ring",
    -- Speed
    right_ring="Shneddick Ring",
    -- MEVA
    back="Null shawl",
}

--
-- TP Sets
--
sets.tp = {}

sets.tp.List = {
    "Hybrid",
}

--[[
    head="Mpaca's Cap",
    body="Mpaca's Doublet",
    hands="Mpaca's Gloves",
    legs="Mpaca's Hose",
    feet="Mpaca's Boots",
]]

sets.tp.Hybrid = {
    -- STP
    ammo="Coiste Bodhar",
    -- DT / Subtle Blow
    head="Bhikku Crown +2",
    -- MA / Impetus
    body="Bhikku Cyclas +2",
    -- TODO - Mpaca?
    hands="Malignance Gloves",
    -- STP / Kick Attacks
    legs="Bhikku Hose +2",
    -- TA / TODO: AF
    feet="Mpaca's Boots",
    -- TODO MNK BELT - Triple ATK
    waist="Windbuffet Belt",
    -- ACC / 5 DT
    neck="Null Loop",
    -- DA
    left_ear="Sherida Earring",
    -- DA
    right_ear="Schere Earring",
    -- STP
    left_ring="Chirich Ring +1",
    -- QA
    right_ring="Niqmaddu Ring",
    -- Kick Attacks / DA
    back={ name="Segomo's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
} 

--
-- WS Sets 
-- 
sets.ws = {}

-- WSD >>> ALL by default
sets.ws.Default = {
    -- DA
    ammo="Coiste Bodhar",
    -- TP Bonus / TA
    head="Mpaca's Cap",
    -- TA
    body="Mpaca's Doublet",
    -- TA
    hands="Mpaca's Gloves",
    -- TA
    legs="Mpaca's Hose",
    -- TA
    feet={ name="Herculean Boots", augments={'Attack+24','"Triple Atk."+3','Accuracy+12',}},
    -- FTP
    waist="Fotia Belt",
    -- FTP
    neck="Fotia Gorget",
    -- PDL/Stats
    left_ring="Ephramad's Ring",
    -- QA
    right_ring="Niqmaddu Ring",
    -- TP+
    left_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
    -- DA
    right_ear="Schere Earring",
    -- TODO AMBU CLOAK
    back="Null Shawl",
}


-- 
-- Job Abilities
-- 
sets.ja = {}

-- Buffs
sets.ja.Impetus = {
    body="Bhikku Cyclas +2",
}



-- TODO JSE

-- 
-- Spell Precast Sets
--
sets.precast = {} 

-- Fast Cast
sets.precast.FastCast = {
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

-- DRK Magic Skill > Magic ACC > Magic ATK Bonus
sets.midcast.Default = {
    ammo="Staunch Tathlum +1",
    legs={ name="Eschite Cuisses", augments={'"Mag.Atk.Bns."+25','"Conserve MP"+6','"Fast Cast"+5',}},
    right_ear="Ethereal Earring",
    left_ring="Evanescence Ring",
    right_ring="Kishar Ring",
}
