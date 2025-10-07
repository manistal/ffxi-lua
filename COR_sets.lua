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
    -- "Savage Magic",
    "Rostam",
    "RACC",
    "LEADEN",
    "DI Farming",
}


sets.weapons["Savage Spam"] = {
    main="Naegling",
    sub="Gleti's Knife",
    range="Fomalhaut",
    ammo="Chrono Bullet",
}

--sets.weapons["Savage Magic"] = { 
--    main="Tauret",
--    sub="Naegling",
--    range="Fomalhaut",
--    ammo="Chrono Bullet",
--}

sets.weapons["Rostam"] = {
    main={ name="Rostam", augments={'Path: C',}},
    sub="Gleti's Knife",
    range="Fomalhaut",
    ammo="Chrono Bullet",
}

sets.weapons["RACC"] = {
    main={ name="Rostam", augments={'Path: C',}},
    sub="Lanun Knife",
}

sets.weapons["LEADEN"] = {
    main={ name="Rostam", augments={'Path: C',}},
    sub="Tauret",
    range="Fomalhaut",
    ammo="Chrono Bullet",
}

sets.weapons["DI Farming"] = {
    main="Voluspa Knife",
    sub="Gleti's Knife",
    range="Fomalhaut",
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
    back={ name="Camulus's Mantle", augments={'INT+20','Eva.+20 /Mag. Eva.+20','"Snapshot"+10',}},
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
    "Default",
}

-- DW > 11 for /nin 
-- DW > 21 for /nin, > 9 for haste samba
-- Haste = 25
-- TA > STP = DA > 
-- Currently 27 Haste, 10 DW
sets.tp.Default = {
    -- Haste: +8
    head={ name="Herculean Helm", augments={'Accuracy+15','"Triple Atk."+3','STR+5','Attack+10',}},
    neck="Iskur Gorget",
    -- Haste: +4, DW: +5
    body={ name="Adhemar Jacket", augments={'DEX+10','AGI+10','Accuracy+15',}},
    -- Haste: +5
    hands="Adhemar Wristbands",
    -- Haste: +6
    legs="Chas. Culottes +3",
    -- Haste: +4
    feet={ name="Herculean Boots", augments={'Attack+24','"Triple Atk."+3','Accuracy+12',}},
    waist="Windbuffet Belt",
    -- DW: +5 
    left_ear="Suppanomimi",
    right_ear="Telos Earring",
    left_ring="Chirich Ring",
    right_ring="Chirich Ring",
    back={ name="Camulus's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','"Dbl.Atk."+10','Damage taken-5%',}},

}

sets.tp.Hybrid = set_combine(sets.tp.Default, {
    -- 7 DT
    head={ name="Nyame Helm", augments={'Path: B',}},
    -- 9 DT
    body={ name="Nyame Mail", augments={'Path: B',}},
    -- 12 DT
    legs="Chas. Culottes +3",
    -- DW
    left_ear="Suppanomimi",
    -- DW
    right_ear="Eabani Earring",
    -- 10 DT
    left_ring="Murky Ring",
}) 


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
    hands={ name="Leyline Gloves", augments={'Accuracy+6','Mag. Acc.+2','"Mag.Atk.Bns."+6',}},
    right_ring="Kishar Ring",
    right_ear="Loquac. Earring",
}

sets.precast.Utsusemi = set_combine(sets.precast.FastCast, {
    neck="Magoraga Beads",
})

-- 40 snapshot with Flurry II
-- 60 snapshot without 
-- Current: Snapshot 54, Rapidshot 18
sets.precast.Ranged = {
    -- Snapshot: +6
    head="Ikenga's Hat",
    -- Snapshot: +8, RapidShot: +11
    hands="Carmine Fin. Ga. +1",
    -- Snapshot: +9
    body="Ikenga's Vest",
    -- Snapshot +9 
    legs="Chas. Culottes +3",
    -- Snapshot: +10
    feet="Meg. Jam. +2", 
    -- Snapshot: +3 
    neck={ name="Comm. Charm +1", augments={'Path: A',}},
    -- Rapid Shot: +5, -- TODO Impulse Belt (3)
    waist="Yemaya Belt",
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
    body="Ikenga's Vest",
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
    -- 51 Acc
    head="Chasseur's Tricorne +2",
    -- 54 Acc
    body="Chasseur's Frac +2",
    -- 52 Acc
    hands="Chasseur's Gants +2",
    -- 63 Acc
    legs="Chas. Culottes +3",
    -- 50 Acc
    --feet="Chass. Botte-s +1",
})

sets.midcast.TripleShot = set_combine(sets.midcast.Ranged, {
    body="Chasseur's Frac +2",
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
    hands="Chasseur's Gants +2",
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
    -- TODO Lanun Hat
    -- RACC/RATK
    head="Ikenga's Hat",
    -- TP Bonus
    body="Ikenga's Vest",
    -- RACC
    neck="Iskur Gorget",
    -- RACC
    waist="Yemaya Belt",
    -- RACC
    right_ring="Meghanada Ring",
    -- TODO Ranged Attack WSD!
    back={ name="Camulus's Mantle", augments={'AGI+20','Rng.Acc.+20 Rng.Atk.+20','Rng.Acc.+10','"Store TP"+10',}},
})

-- Magical ATK
sets.ws["Wildfire"] = set_combine(sets.ws.Default, {
    head={ name="Nyame Helm", augments={'Path: B',}},
    body={ name="Lanun Frac +3", augments={'Enhances "Loaded Deck" effect',}},
    hands={ name="Nyame Gauntlets", augments={'Path: B',}},
    legs={ name="Nyame Flanchard", augments={'Path: B',}},
    feet={ name="Lanun Bottes +4", augments={'Enhances "Wild Card" effect',}},
    neck={ name="Comm. Charm +1", augments={'Path: A',}},
    waist="Eschan Stone",
    left_ear="Friomisi Earring",
    right_ear="Hermetic Earring",
    back={ name="Camulus's Mantle", augments={'AGI+20','Mag. Acc+20 /Mag. Dmg.+20','Weapon skill damage +10%',}},
})

sets.ws["Leaden Salute"]  = set_combine(sets.ws.Default, {
    head="Pixie Hairpin +1",
    neck={ name="Comm. Charm +1", augments={'Path: A',}},
    body={ name="Lanun Frac +3", augments={'Enhances "Loaded Deck" effect',}},
    hands={ name="Nyame Gauntlets", augments={'Path: B',}},
    legs={ name="Nyame Flanchard", augments={'Path: B',}},
    feet={ name="Lanun Bottes +4", augments={'Enhances "Wild Card" effect',}},
    waist="Eschan Stone",
    ring_ring="Archon Ring",
    left_ear="Friomisi Earring",
    right_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
    back={ name="Camulus's Mantle", augments={'AGI+20','Mag. Acc+20 /Mag. Dmg.+20','Weapon skill damage +10%',}},
})

sets.ws["Hot Shot"] = set_combine(sets.ws.Default, { 
    -- TODO FOTIA
    left_ear="Friomisi Earring",
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
    main={ name="Lanun Knife", augments={'Path: C',}},
    range={ name="Compensator", augments={'DMG:+15','AGI+15','Rng.Acc.+15',}},
    head={ name="Lanun Tricorne", augments={'Enhances "Winning Streak" effect',}},
    hands="Chasseur's Gants +2",
    right_ring="Luzaf's Ring",
    back={ name="Camulus's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','"Dual Wield"+10','Damage taken-5%',}},
})

-- General JA Bonuses
sets.ja["Random Deal"] = {body={ name="Lanun Frac +3", augments={'Enhances "Loaded Deck" effect',}},}
-- sets.ja["Fold"] = {hands="Lanun Gants +1"}
-- sets.ja["Snake Eye"] = {legs="Lanun Trews +1"}
sets.ja["Wild Card"] = {feet={ name="Lanun Bottes +4", augments={'Enhances "Wild Card" effect',}}}

-- Roll bonuses
sets.ja["Blitzer's Roll"] = {head="Chasseur's Tricorne +1"}
sets.ja["Tactician's Roll"] = {body="Chasseur's Frac +2",}
sets.ja["Allies' Roll"] = {hands="Chasseur's Gants +2",}
sets.ja["Caster's Roll"] = {legs="Chas. Culottes +3",}
sets.ja["Courser's Roll"] = {feet="Chass. Bottes +1",}

sets.ja["Quick Draw"] = {
    head={ name="Nyame Helm", augments={'Path: B',}},
    body={ name="Lanun Frac +3", augments={'Enhances "Loaded Deck" effect',}},
    hands="Carmine Fin. Ga. +1",
    legs={ name="Nyame Flanchard", augments={'Path: B',}},
    feet="Chass. Bottes +1",
    neck={ name="Comm. Charm +1", augments={'Path: A',}},
    waist="Eschan Stone",
    right_ear="Friomisi Earring",
    back={ name="Camulus's Mantle", augments={'AGI+20','Mag. Acc+20 /Mag. Dmg.+20','Weapon skill damage +10%',}},
}