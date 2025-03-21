--
-- DRK Lua by MigsDank
-- 

sets = {}

--
-- Weapon Sets
-- 
sets.weapons = {}
sets.weapons.List = {
    "Espiritus"
}

sets.weapons["Espiritus"] = {
    main="Espiritus",
    sub="Elan Strap",
}



-- Idle/DT Base Set
sets.idle = {}
sets.idle.Default = {
    ammo="Staunch Tathlum",
    head={ name="Nyame Helm", augments={'Path: B',}},
    body={ name="Nyame Mail", augments={'Path: B',}},
    hands={ name="Nyame Gauntlets", augments={'Path: B',}},
    legs={ name="Nyame Flanchard", augments={'Path: B',}},
    feet={ name="Nyame Sollerets", augments={'Path: B',}},
    neck={ name="Loricate Torque +1", augments={'Path: A',}},
    waist="Regal Belt",
    left_ear="Eabani Earring",
    right_ear="Malignance Earring",
    left_ring="Vocane Ring",
    right_ring="Warden's Ring",
    back={ name="Campestres's Cape", augments={'Pet: M.Acc.+20 Pet: M.Dmg.+20','"Fast Cast"+10',}},
}

sets.idle.Perp = {

    -- Need JSE Helm/Chest

}

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
}

-- 
-- Job Abilities
-- 
sets.ja = {}


-- 
-- Spell Precast Sets
--
sets.precast = {} 

-- Fast Cast
sets.precast.FastCast = {
    body="Inyanga Jubbah +2",
    left_ear="Loquac. Earring",
    right_ear="Malignance Earring",
    back={ name="Campestres's Cape", augments={'Pet: M.Acc.+20 Pet: M.Dmg.+20','"Fast Cast"+10',}},
}

sets.precast.BPRage = {

    back={ name="Campestres's Cape", augments={'Pet: M.Acc.+20 Pet: M.Dmg.+20','"Fast Cast"+10',}},
}



-- 
-- Spell Midcast Sets
-- 
sets.midcast = {}

sets.midcast.Default = {
}

