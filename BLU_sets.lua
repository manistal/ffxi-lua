--
-- DRK Lua by MigsDank
-- 

sets = {}

--
-- Weapon Sets
-- 
sets.weapons = {}
sets.weapons.List = {
    "Swords",
    "MAB",
}


sets.weapons["Swords"] = {
    main="Naegling",
    sub="Sakpata's Sword"
}

sets.weapons["MAB"] = {
    main="Maxentius",
    sub="Bunzi's Rod"
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
    -- DT: -3 
    ammo="Staunch Tathlum +1",
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
    left_ear="Alabaster Earring",
    -- HP
    right_ear="Tuisto Earring",
    -- DT: -10
    left_ring="Murky Ring",
    -- SPEED
    right_ring="Shneddick Ring",
    -- MEVA
    back="Null Shawl",
}

sets.idle.Regen = set_combine(sets.idle.Default, {
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
    "Learning"
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
    legs={ name="Nyame Flanchard", augments={'Path: B',}},
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

sets.tp.Learning = set_combine(sets.tp.Hybrid, {
    hands="Magus Bazubands"
})


-- 
-- Precast Sets
--
sets.precast = {} 
sets.precast.Default = {
}

sets.precast.FastCast = {
    -- FC 6
    hands={ name="Leyline Gloves", augments={'Accuracy+5','"Mag.Atk.Bns."+7','"Fast Cast"+1',}},
    -- 6 FC
    legs="Aya. Cosciales +2",
    -- 4 FC
    right_ring="Kishar Ring",
    -- 2 FC
    right_ear="Loquac. Earring",
}


-- 
-- Midcast Sets
-- 
sets.midcast = {}

-- TODO Empyrean 
-- TODO Generic casting stuff
sets.midcast.Default = {

}


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
    hands={ name="Nyame Gauntlets", augments={'Path: B',}},
    -- WSD: +3
    legs={ name="Nyame Flanchard", augments={'Path: B',}},
    -- WSD: +12
    feet={ name="Nyame Sollerets", augments={'Path: B',}},
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
}


-- 
-- Job Ability Sets
-- 
sets.ja = {}
