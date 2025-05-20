--
-- DRK Lua by MigsDank
-- 

sets = {}

--
-- Weapon Sets
-- 
sets.weapons = {}
sets.weapons.List = {
    "Savage Magic",
    "Savage Spam",
    "DI Farming",
    "Tauret Savage",
    "Tauret Lanun",
}



sets.weapons["Savage Magic"] = { 
    main="Naegling",
    sub="Tauret",
    range="Fomalhaut",
    ammo="Chrono Bullet",
}

sets.weapons["Savage Spam"] = {
    main="Naegling",
    sub="Demers. Degen +1",
    range="Fomalhaut",
    ammo="Chrono Bullet",
}

sets.weapons["DI Farming"] = {
    main="Tauret",
    sub="Voluspa Knife",
    range="Fomalhaut",
    ammo="Chrono Bullet",
}

sets.weapons["Tauret Savage"] = { 
    main="Tauret",
    sub="Naegling",
    range="Fomalhaut",
    ammo="Chrono Bullet",
}

sets.weapons["Tauret Lanun"] = {
    main="Tauret",
    sub="Lanun Knife",
    range="Fomalhaut",
    ammo="Chrono Bullet",
}



-- Idle/DT Base Set
-- DT == 50
-- MEva >= Eva = Regen
-- Current DT: 51
sets.idle = {}
sets.idle.Default = {
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
    waist="Carrier's Sash",
    left_ear="Odnowa Earring +1",
    right_ear="Eabani Earring",
    -- DT: -7
    left_ring="Vocane Ring",
    right_ring="Chirich Ring",
    back={ name="Camulus's Mantle", augments={'INT+20','Eva.+20 /Mag. Eva.+20','"Snapshot"+10',}},
}


--
-- TP Sets
--
sets.tp = {}

sets.tp.List = {
    "DTMeva",
    "Hybrid",
    "FullDT",
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
    legs="Chas. Culottes +2",
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
    -- DT: -6
    neck={ name="Loricate Torque +1", augments={'Path: A',}},
    -- DT: -12
    legs="Chas. Culottes +2",
    -- DT: -7 
    feet={ name="Nyame Sollerets", augments={'Path: B',}},
    -- DT: -7
    left_ring="Vocane Ring",
}) 

sets.tp.FullDT = set_combine(sets.tp.Default, {
    -- DT: -7
    head={ name="Nyame Helm", augments={'Path: B',}},
    -- DT: -6
    neck={ name="Loricate Torque +1", augments={'Path: A',}},
    --DT: -7
    hands={ name="Nyame Gauntlets", augments={'Path: B',}},
    -- DT: -6
    neck={ name="Loricate Torque +1", augments={'Path: A',}},
    -- DT: -12
    legs="Chas. Culottes +2",
    -- DT: -7 
    feet={ name="Nyame Sollerets", augments={'Path: B',}},
    -- DT: -7
    left_ring="Vocane Ring",
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

-- 40 snapshot with Flurry II
-- 60 snapshot without 
-- Current: Snapshot 41, Rapidshot 18
sets.precast.Ranged = {
    -- Snapshot: +3 
    neck={ name="Comm. Charm +1", augments={'Path: A',}},
    -- Snapshot: +8, RapidShot: +11
    hands="Carmine Fin. Ga. +1",
    -- Rapid Shot: +18
    body="Laksa. Frac +2",
    -- Rapid Shot: +19
    --legs={ name="Pursuer's Pants", augments={'AGI+10','"Rapid Shot"+10','"Subtle Blow"+7',}},
    -- Snapshot +10
    legs="Chas. Culottes +2",
    -- Snapshot: +10
    feet="Meg. Jam. +2", 
    -- Rapid Shot: +5
    waist="Yemaya Belt",
    -- Snapsht: +10
    back={ name="Camulus's Mantle", augments={'INT+20','Eva.+20 /Mag. Eva.+20','"Snapshot"+10',}},
}


-- 
-- Midcast Sets
-- 
sets.midcast = {}

-- Ranged Acc >= STP/TSHOT >= RangedATK
sets.midcast.Ranged = {
    head="Meghanada Visor +2",
    neck="Iskur Gorget",
    body="Chasseur's Frac +2",
    hands="Meg. Gloves +2",
    legs="Chas. Culottes +2",
    feet="Meg. Jam. +2",
    waist="Yemaya Belt",
    right_ring="Meghanada Ring",
    back={ name="Camulus's Mantle", augments={'AGI+20','Rng.Acc.+20 Rng.Atk.+20','Rng.Acc.+10','"Store TP"+10',}},
}

sets.midcast.TripleShot = {
    body="Chasseur's Frac +2",
}

--
-- WS Sets 
-- 
sets.ws = {}

-- TP Bonus > WSD > Attack = Accuracy
sets.ws.Default = {
    -- WSD: +1
    head={ name="Nyame Helm", augments={'Path: B',}},
    -- WSD: +5
    body="Laksa. Frac +2",
    -- WSD: +7
    hands="Meg. Gloves +2",
    -- WSD: +3
    legs={ name="Nyame Flanchard", augments={'Path: B',}},
    -- WSD: +5
    feet={ name="Lanun Bottes +2", augments={'Enhances "Wild Card" effect',}},
    -- TP+250
    right_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
    -- WSD: +2
    left_ear="Ishvara Earring",
    -- WSD: +10
    back={ name="Camulus's Mantle", augments={'STR+20','Accuracy+20 Attack+20','Weapon skill damage +10%','Mag. Evasion+6',}},
}

-- Melee Physical
sets.ws["Savage Blade"]  = sets.ws.Default
sets.ws["Requiescat"]  = sets.ws.Default

-- Ranged Physical 
sets.ws["Last Stand"]  = set_combine(sets.ws.Default, {
    head="Meghanada Visor +2",
    neck="Iskur Gorget",
    hands="Meg. Gloves +2",
    waist="Yemaya Belt",
    right_ring="Meghanada Ring",
    back={ name="Camulus's Mantle", augments={'AGI+20','Rng.Acc.+20 Rng.Atk.+20','Rng.Acc.+10','"Store TP"+10',}},
})

-- Magical ATK
sets.ws["Wildfire"] = set_combine(sets.ws.Default, {
    head={ name="Nyame Helm", augments={'Path: B',}},
    neck={ name="Comm. Charm +1", augments={'Path: A',}},
    body={ name="Lanun Frac +3", augments={'Enhances "Loaded Deck" effect',}},
    hands={ name="Nyame Gauntlets", augments={'Path: B',}},
    legs={ name="Nyame Flanchard", augments={'Path: B',}},
    feet={ name="Lanun Bottes +2", augments={'Enhances "Wild Card" effect',}},
    waist="Eschan Stone",
    left_ear="Hermetic Earring",
    right_ear="Friomisi Earring",
    back={ name="Camulus's Mantle", augments={'AGI+20','Mag. Acc+20 /Mag. Dmg.+20','Weapon skill damage +10%',}},
})

sets.ws["Leaden Salute"]  = set_combine(sets.ws.Default, {
    head="Pixie Hairpin +1",
    neck={ name="Comm. Charm +1", augments={'Path: A',}},
    body={ name="Lanun Frac +3", augments={'Enhances "Loaded Deck" effect',}},
    hands={ name="Nyame Gauntlets", augments={'Path: B',}},
    legs={ name="Nyame Flanchard", augments={'Path: B',}},
    feet={ name="Lanun Bottes +2", augments={'Enhances "Wild Card" effect',}},
    waist="Eschan Stone",
    right_ring="Archon Ring",
    left_ear="Hermetic Earring",
    right_ear="Friomisi Earring",
    back={ name="Camulus's Mantle", augments={'AGI+20','Mag. Acc+20 /Mag. Dmg.+20','Weapon skill damage +10%',}},
})

sets.ws["Aeolian Edge"] = sets.ws["Wildfire"]

-- 
-- Job Ability Sets
-- 
sets.ja = {}

-- Effect Bonus > Duration
sets.ja.PhantomRoll = set_combine(sets.idle.Default, {
    main="Lanun Knife",
    range={ name="Compensator", augments={'DMG:+15','AGI+15','Rng.Acc.+15',}},
    head={ name="Lanun Tricorne", augments={'Enhances "Winning Streak" effect',}},
    hands="Chasseur's Gants +1",
    left_ring="Barataria Ring",
    right_ring="Luzaf's Ring",
    back={ name="Camulus's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','"Dual Wield"+10','Damage taken-5%',}},
})

-- General JA Bonuses
sets.ja["Random Deal"] = {body={ name="Lanun Frac +3", augments={'Enhances "Loaded Deck" effect',}},}
-- sets.ja["Fold"] = {hands="Lanun Gants +1"}
-- sets.ja["Snake Eye"] = {legs="Lanun Trews +1"}
sets.ja["Wild Card"] = {feet={ name="Lanun Bottes +2", augments={'Enhances "Wild Card" effect',}}}

-- Roll bonuses
sets.ja["Blitzer's Roll"] = {head="Chasseur's Tricorne +1"}
sets.ja["Tactician's Roll"] = {body="Chasseur's Frac +2",}
sets.ja["Allies' Roll"] = {hands="Chasseur's Gants +1",}
sets.ja["Caster's Roll"] = {legs="Chas. Culottes +2",}
--sets.ja["Courser's Roll"] = {feet="Chasseur's Bottes +1"}

sets.ja["Quick Draw"] = {
    head="Chasseur's Tricorne +1",
    body="Chasseur's Frac +2",
    hands="Chasseur's Gants +1",
    legs="Chas. Culottes +2",
}