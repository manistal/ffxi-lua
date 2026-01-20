--
-- DRK Lua by MigsDank
-- 

sets = {}

--
-- Weapon Sets
-- 
sets.weapons = {}
sets.weapons.List = {
    "Savage Spam",
    "Rostam",
    "RACC",
    "MAB",
    "Dynamis",
}


sets.weapons["Savage Spam"] = {
    main="Naegling",
    sub="Gleti's Knife",
    range="Anarchy +2",
    ammo="Chrono Bullet",
}

sets.weapons["Rostam"] = {
    main={ name="Rostam", augments={'Path: C',}},
    sub="Gleti's Knife",
    range="Fomalhaut",
    ammo="Chrono Bullet",
}

sets.weapons["RACC"] = {
    main={ name="Rostam", augments={'Path: C',}},
    sub="Lanun Knife",
    range="Fomalhaut",
    ammo="Chrono Bullet",
}

sets.weapons["MAB"] = {
    main="Naegling",
    sub="Tauret",
    range="Fomalhaut",
    ammo="Chrono Bullet",
}

sets.weapons["Dynamis"] = {
    main="Naegling",
    sub={ name="Rostam", augments={'Path: C',}},
    range="Anarchy +2",
    ammo="Chrono Bullet",
}


-- Idle/DT Base Set
-- DT == 50
-- MEva >= Eva = Regen
-- Current DT: 51
sets.idle = {}
sets.idle.List = {
    "Default",
    "Regen",
}


sets.idle.Default = {
    -- DT: -7
    head={ name="Nyame Helm", augments={'Path: B',}},
    -- DT: -9
    body={ name="Nyame Mail", augments={'Path: B',}},
    --DT: -7
    hands={ name="Nyame Gauntlets", augments={'Path: B',}},
    -- DT: -8
    legs={ name="Nyame Flanchard", augments={'Path: B',}},
    -- DT: -7
    feet={ name="Nyame Sollerets", augments={'Path: B',}},
    -- MDEF
    neck="Warder's Charm +1",
    -- DT -3
    waist="Plat. Mog. Belt",
    -- HP
    left_ear="Odnowa Earring +1",
    -- HP
    right_ear="Eabani Earring",
    -- DT: -10
    left_ring="Murky Ring",
    -- SPEED
    right_ring="Shneddick Ring",
    -- MEVA
    back="Null Shawl",
    --back={ name="Camulus's Mantle", augments={'INT+20','Eva.+20 /Mag. Eva.+20','"Snapshot"+10',}},
}

sets.idle.Regen = set_combine(sets.idle.Default, {
    head="Meghanada Visor +2",
    body="Meg. Cuirie +2", -- Regen 
    hands="Meg. Gloves +2", -- Regen
    legs="Meg. Chausses +2", -- Regen
    feet="Meg. Jam. +2", -- Regen
    left_ring="Chirich Ring",
    right_ring="Chirich Ring",
})


--
-- TP Sets
--
sets.tp = {}

sets.tp.List = {
    "Hybrid",
    "DTMeva",
}


-- DW > 11 for /nin 
-- DW > 21 for /nin, > 9 for haste samba
-- Haste = 25
-- TA > STP = DA > 
-- DT 50 > MEVA > ACC >= TP
sets.tp.Hybrid = {
    -- 7 DT
    head="Malignance Chapeau",
    -- 9 DT
    body="Malignance Tabard",
    -- 5 DT 
    hands="Malignance Gloves",
    -- 12 DT
    legs="Chas. Culottes +3",
    -- 7 DT
    feet="Malignance Boots",
    -- Triple ATK
    waist="Sailfi Belt +1",
    -- ACC / 5 DT
    neck="Null Loop",
    -- DW
    left_ear="Suppanomimi",
    -- TP
    right_ear="Telos Earring",
    -- 10 DT
    left_ring="Murky Ring",
    -- ACC / STP
    right_ring="Chirich Ring",
    -- MEVA
    back="Null Shawl",
} 


sets.tp.DTMeva = set_combine(sets.idle.Default, {
    left_ear="Suppanomimi",
    right_ear="Telos Earring",
    right_ring="Chirich Ring",
    left_ring="Chirich Ring",
    waist="Sailfi Belt +1",
})


-- 
-- Precast Sets
--
sets.precast = {} 
sets.precast.Default = {
}

sets.precast.FastCast = {
    hands={ name="Leyline Gloves", augments={'Accuracy+5','"Mag.Atk.Bns."+7','"Fast Cast"+1',}},
    right_ring="Kishar Ring",
    right_ear="Loquac. Earring",
}

sets.precast.Utsusemi = set_combine(sets.precast.FastCast, {
    neck="Magoraga Beads",
})

-- 40 snapshot with Flurry II
-- 60 snapshot without 
-- Current: Snapshot 59, Rapidshot 18
sets.precast.Ranged = {
    -- Snapshot: +6
    head="Ikenga's Hat",
    -- Snapshot: +8, RapidShot: +11
    -- hands="Carmine Fin. Ga. +1",
    -- Snapshot 13 TODO: Swap back when we get another 6
    hands="Lanun Gants +3", 
    -- Snapshot: +9
    body="Ikenga's Vest",
    -- Snapshot +9 
    legs="Chas. Culottes +3",
    -- Snapshot: +10
    feet="Meg. Jam. +2", 
    -- Snapshot: +3 
    neck={ name="Comm. Charm +1", augments={'Path: A',}},
    -- Snapshot +3
    waist="Impulse Belt",
    -- Snapsht: +10
    back={ name="Camulus's Mantle", augments={'INT+20','Eva.+20 /Mag. Eva.+20','"Snapshot"+10',}},
    -- TODO Crepuscular Ring (3)
}


-- 
-- Midcast Sets
-- 
sets.midcast = {}

--[[
    head="Ikenga's Hat",
    body="Ikenga's Vest",
    hands="Ikenga's Gloves",
    legs="Ikenga's Trousers",
    feet="Ikenga's Clogs",

    body="Chasseur's Frac +2",
]]



-- Ranged Acc >= STP >= RangedATK
sets.midcast.RangedDefault = {
    head="Ikenga's Hat",
    body="Malignance Tabard",
    hands="Ikenga's Gloves",
    legs="Chas. Culottes +3",
    feet="Ikenga's Clogs",
    neck="Iskur Gorget",
    waist="Yemaya Belt",
    right_ear="Telos Earring",
    right_ring="Meghanada Ring",
    back={ name="Camulus's Mantle", augments={'AGI+20','Rng.Acc.+20 Rng.Atk.+20','Rng.Acc.+10','"Store TP"+10',}},
}

sets.midcast.Ranged = set_combine(sets.midcast.RangedDefault, {
    -- 50 ACC / 8 STP
    head="Malignance Chapeau",
    -- 50 ACC
    body="Malignance Tabard",
    -- 50 ACC
    hands="Malignance Gloves",
    -- 63 ACC
    legs="Chas. Culottes +3",
    -- 50 ACC
    feet="Malignance Boots",
    -- RACC / STP
    neck="Iskur Gorget",
    -- RACC
    left_ring="Ilabrat Ring",
    -- STP
    right_ring="Chirich Ring",
    -- STP / DBLATK
    right_ear="Telos Earring",
    -- 50 ACC / 7 STP
    back="Null Shawl",
})

sets.midcast.TripleShot = set_combine(sets.midcast.Ranged, {
    body="Chasseur's Frac +2",
    hands="Lanun Gants +3", 
    back={ name="Camulus's Mantle", augments={'AGI+20','Rng.Acc.+20 Rng.Atk.+20','Rng.Acc.+10','"Store TP"+10',}},
})

--
-- WS Sets 
-- 
sets.ws = {}

-- TP Bonus > WSD > Attack = Accuracy
sets.ws.Default = {
    -- WSD: +6
    head={ name="Nyame Helm", augments={'Path: B',}},
    -- WSD: +5
    body={ name="Nyame Mail", augments={'Path: B',}},
    -- WSD: +8
    hands="Chasseur's Gants +3",
    -- WSD: +3
    legs={ name="Nyame Flanchard", augments={'Path: B',}},
    -- WSD: +12
    feet={ name="Lanun Bottes +4", augments={'Enhances "Wild Card" effect',}},
    -- STR/ATK
    waist="Sailfi Belt +1",
    -- 30 ATK
    neck="Republican Platinum Medal",
    -- WSD 10
    left_ring="Cornelia's Ring",
    -- TP+250
    right_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
    -- WSD: +2
    left_ear="Ishvara Earring",
    -- WSD: +10
    back={ name="Camulus's Mantle", augments={'STR+20','Accuracy+20 Attack+20','Weapon skill damage +10%','Mag. Evasion+6',}},
}

-- Ranged Physical 
sets.ws["Last Stand"]  = set_combine(sets.ws.Default, {
    -- TODO FOTIA
    -- RATK TODO: Enough RACC4
    head="Lanun Tricorne +3",
    -- RACC/RATK
    -- head="Ikenga's Hat",
    -- TP Bonus
    body="Ikenga's Vest",
    -- RACC
    waist="Yemaya Belt",
    -- RACC
    neck="Null Loop",
    -- RACC
    right_ring="Meghanada Ring",
    -- RATK / AGI
    left_ring="Dingir Ring",
    -- RACC / WSD
    back={ name="Camulus's Mantle", augments={'AGI+20','Rng.Acc.+20 Rng.Atk.+20','AGI+10','Weapon skill damage +10%',}},
})

-- Magical ATK
sets.ws["Wildfire"] = set_combine(sets.ws.Default, {
    head={ name="Nyame Helm", augments={'Path: B',}},
    body={ name="Lanun Frac +4", augments={'Enhances "Loaded Deck" effect',}},
    hands={ name="Nyame Gauntlets", augments={'Path: B',}},
    legs={ name="Nyame Flanchard", augments={'Path: B',}},
    feet={ name="Lanun Bottes +4", augments={'Enhances "Wild Card" effect',}},
    neck={ name="Comm. Charm +1", augments={'Path: A',}},
    waist="Eschan Stone",
    left_ear="Friomisi Earring",
    right_ear="Hermetic Earring",
    left_ring="Dingir Ring",
    back={ name="Camulus's Mantle", augments={'AGI+20','Mag. Acc+20 /Mag. Dmg.+20','Weapon skill damage +10%',}},
})

sets.ws["Leaden Salute"]  = set_combine(sets.ws.Default, {
    head="Pixie Hairpin +1",
    neck={ name="Comm. Charm +1", augments={'Path: A',}},
    body={ name="Lanun Frac +4", augments={'Enhances "Loaded Deck" effect',}},
    hands={ name="Nyame Gauntlets", augments={'Path: B',}},
    legs={ name="Nyame Flanchard", augments={'Path: B',}},
    feet={ name="Lanun Bottes +4", augments={'Enhances "Wild Card" effect',}},
    waist="Eschan Stone",
    right_ring="Archon Ring",
    left_ring="Dingir Ring",
    left_ear="Friomisi Earring",
    right_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
    back={ name="Camulus's Mantle", augments={'AGI+20','Mag. Acc+20 /Mag. Dmg.+20','Weapon skill damage +10%',}},
})

sets.ws["Hot Shot"] = set_combine(sets.ws.Default, { 
    -- TODO FOTIA
    -- RACC 
    neck="Null Loop",
    -- MAB
    left_ear="Friomisi Earring",
    -- RACC
    -- back="Null Shawl",
    left_ring="Dingir Ring",
    -- MAB / WSD 
    back={ name="Camulus's Mantle", augments={'AGI+20','Mag. Acc+20 /Mag. Dmg.+20','Weapon skill damage +10%',}},
})

-- Melee Sword
sets.ws["Savage Blade"]  = sets.ws.Default
sets.ws["Requiescat"]  = sets.ws.Default

-- Melee Dagger
sets.ws["Aeolian Edge"] = sets.ws["Wildfire"]

-- 
-- Job Ability Sets
-- 
sets.ja = {}

-- Effect Bonus > Duration
sets.ja.PhantomRoll = set_combine(sets.idle.Default, {
    main={ name="Rostam", augments={'Path: C',}},
    neck="Regal Necklace",
    range={ name="Compensator", augments={'DMG:+15','AGI+15','Rng.Acc.+15',}},
    head="Lanun Tricorne +3",
    hands="Chasseur's Gants +3",
    right_ring="Luzaf's Ring",
    back={ name="Camulus's Mantle", augments={'INT+20','Eva.+20 /Mag. Eva.+20','"Snapshot"+10',}},
})

-- General JA Bonuses
sets.ja["Random Deal"] = {body={ name="Lanun Frac +4", augments={'Enhances "Loaded Deck" effect',}},}
-- sets.ja["Fold"] = {hands="Lanun Gants +3"}
-- sets.ja["Snake Eye"] = {legs="Lanun Trews +1"}
sets.ja["Wild Card"] = {feet={ name="Lanun Bottes +4", augments={'Enhances "Wild Card" effect',}}}

-- Roll bonuses
sets.ja["Blitzer's Roll"] = {head="Chasseur's Tricorne +2"}
sets.ja["Tactician's Roll"] = {body="Chasseur's Frac +2",}
sets.ja["Allies' Roll"] = {hands="Chasseur's Gants +3",}
sets.ja["Caster's Roll"] = {legs="Chas. Culottes +3",}
sets.ja["Courser's Roll"] = {feet="Chass. Bottes +1",}

sets.ja["Quick Draw"] = {
    head={ name="Nyame Helm", augments={'Path: B',}},
    body={ name="Lanun Frac +4", augments={'Enhances "Loaded Deck" effect',}},
    hands="Carmine Fin. Ga. +1",
    legs={ name="Nyame Flanchard", augments={'Path: B',}},
    feet="Chass. Bottes +1",
    neck={ name="Comm. Charm +1", augments={'Path: A',}},
    waist="Eschan Stone",
    right_ear="Friomisi Earring",
    back={ name="Camulus's Mantle", augments={'AGI+20','Mag. Acc+20 /Mag. Dmg.+20','Weapon skill damage +10%',}},
}