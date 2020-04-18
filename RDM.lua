
--Inyana

-- Load and initialize the include file.
include('Character-Include')

--Set to ingame lockstyle and Macro Book/Set
LockStylePallet = "75"
MacroBook = "3"
MacroSet = "1"

function get_sets()

	-- Standard Idle set with -DT,Refresh,Regen and movement gear
	sets.Idle = {
		main={ name="Emissary", augments={'Mag. Acc.+15','"Mag.Atk.Bns."+20','"Refresh"+1',}},
		sub="Genbu's Shield",
		ammo="Staunch Tathlum",
		head={ name="Viti. Chapeau +2", augments={'Enfeebling Magic duration','Magic Accuracy',}},
		body={ name="Malignance Tabard" },
		hands={ name="Malignance Gloves" },
		legs={ name="Malignance Tights" },
		feet={ name="Aya. Gambieras +2" },
		neck={ name="Dls. Torque +2", augments={'Path: A',}},
		-- neck="Loricate Torque +1",
		waist="Flume belt +1",
		left_ear="Genmei Earring",
		right_ear="Ethereal Earring",
		left_ring="Stikini Ring +1",
		right_ring="Stikini Ring +1",
		back={ name="Sucellos's Cape", augments={'MND+20','Mag. Acc+20 /Mag. Dmg.+20','Mag. Acc.+10','"Fast Cast"+10','Phys. dmg. taken-10%',}},
	}
	--Set used for pure -DT when not engaged (no TP considerations and Augments the Idle set)
	sets.DT = {
	}
	sets.Movement = {
		legs={ name="Carmine Cuisses +1", augments={'Accuracy+20','Attack+12','"Dual Wield"+6',}},
	}
	sets.Precast = {}
	-- Used for Magic Spells
	sets.Precast.FastCast = {
		main={ name="Emissary", augments={'Mag. Acc.+15','"Mag.Atk.Bns."+20','"Refresh"+1',}},
		sub="Sors Shield",
		-- ammo="Impatiens",
		head={ name="Welkin Crown" },
		body={ name="Viti. Tabard +1", augments={'Enhances "Chainspell" effect',}},
		hands={ name="Leyline Gloves", augments={'Accuracy+12','Mag. Acc.+14','"Mag.Atk.Bns."+15','"Fast Cast"+2',}},
		legs="Aya. Cosciales +2",
		feet={ name="Merlinic Crackows", augments={'Mag. Acc.+21 "Mag.Atk.Bns."+21','Enmity-1','Mag. Acc.+11',}},
		neck="Voltsurge Torque",
		waist="Witful Belt",
		left_ear="Malignance Earring",
		right_ear="Loquac. Earring",
		left_ring="Kishar Ring",
		back={ name="Sucellos's Cape", augments={'MND+20','Mag. Acc+20 /Mag. Dmg.+20','Mag. Acc.+10','"Fast Cast"+10','Phys. dmg. taken-10%',}},
	}
	-- Job Abilities
	sets.JA = {}
	sets.JA["Chainspell"] = {body={ name="Viti. Tabard +1", augments={'Enhances "Chainspell" effect',}}}
	sets.JA["Saboteur"] = {}
	sets.JA["Spontaneity"] = {}
	sets.JA["Stymie"] = {}
	sets.JA["Convert"] = {}
	sets.JA["Composure"] = {}

	-- ===================================================================================================================
	--		sets.midcast
	-- ===================================================================================================================

	-- Default song duration / strength
	sets.Midcast = {}
	--This set is used as base as is overwrote by specific gear changes (Spell Interruption Rate Down)
	sets.Midcast.SIRD = {
		hands="Chironic Gloves", --20
		legs={ name="Carmine Cuisses +1", augments={'Accuracy+20','Attack+12','"Dual Wield"+6',}}, --20
		ammo="Staunch Tathlum", --10

	}
	-- Cure Set
	sets.Midcast.Cure = {
		main={ name="Emissary", augments={'Mag. Acc.+15','"Mag.Atk.Bns."+20','"Refresh"+1',}},
		sub="Sors Shield",
		head={ name="Vanya Hood", augments={'MP+50','"Cure" potency +7%','Enmity-6',}},
		body={ name="Viti. Tabard +1", augments={'Enhances "Chainspell" effect',}},
    hands={ name="Vanya Cuffs", augments={'MP+50','"Cure" potency +7%','Enmity-6',}},
    legs={ name="Vanya Slops", augments={'MP+50','"Cure" potency +7%','Enmity-6',}},
    feet={ name="Vanya Clogs", augments={'MP+50','"Cure" potency +7%','Enmity-6',}},
		neck={ name="Dls. Torque +2", augments={'Path: A',}},
		waist="Luminary Sash",
		left_ear="Mendi. Earring",
		right_ear="Etiolation Earring",
		left_ring="Stikini Ring +1",
		right_ring="Stikini Ring +1",
		back="Solemnity Cape",
	}
	-- Enhancing Skill
	sets.Midcast.Enhancing = {
		main={ name="Emissary", augments={'Mag. Acc.+15','"Mag.Atk.Bns."+20','"Refresh"+1',}},
		-- sub="Ammurapi Shield",
		ammo="Pemphredo Tathlum",
		-- head={ name="Telchine Cap", augments={'Enh. Mag. eff. dur. +10',}},
		body={ name="Viti. Tabard +1", augments={'Enhances "Chainspell" effect',}},
		hands="Atrophy Gloves +1",
		-- legs="Leth. Fuseau +1",
		-- feet="Leth. Houseaux +1",
		neck={ name="Dls. Torque +2", augments={'Path: A',}},
		-- waist="Embla Sash",
		left_ear="Andoaa Earring",
		-- right_ear="Augment. Earring",
		left_ring="Stikini Ring +1",
		right_ring="Stikini Ring +1",
		back={ name="Sucellos's Cape", augments={'MND+20','Mag. Acc+20 /Mag. Dmg.+20','Mag. Acc.+10','"Fast Cast"+10','Phys. dmg. taken-10%',}},
	}
	sets.Midcast.Enhancing.Others = { --Needs Updated

	}
	-- High MACC for landing spells
	sets.Midcast.Enfeebling = {
		main={ name="Grioavolr", augments={'INT+13','Mag. Acc.+30','"Mag.Atk.Bns."+26','Magic Damage +9',}},
		sub="Enki Strap",
		ammo="Regal Gem",
		head={ name="Viti. Chapeau +2", augments={'Enfeebling Magic duration','Magic Accuracy',}},
		body={ name="Malignance Tabard" },
		hands={ name="Merlinic Dastanas", augments={'Mag. Acc.+24 "Mag.Atk.Bns."+24','"Occult Acumen"+6','CHR+10','Mag. Acc.+12','"Mag.Atk.Bns."+7',}},
		legs={ name="Merlinic Shalwar", augments={'Mag. Acc.+25 "Mag.Atk.Bns."+25','Mag. crit. hit dmg. +3%','INT+6','Mag. Acc.+15','"Mag.Atk.Bns."+7',}},
		feet={ name="Vitiation Boots +1", augments={'Immunobreak Chance',}},
		neck={ name="Dls. Torque +2", augments={'Path: A',}},
		waist="Luminary Sash",
		left_ear="Malignance Earring",
		right_ear="Hermetic Earring",
		left_ring="Stikini Ring +1",
		right_ring="Stikini Ring +1",
		back={ name="Sucellos's Cape", augments={'MND+20','Mag. Acc+20 /Mag. Dmg.+20','Mag. Acc.+10','"Fast Cast"+10','Phys. dmg. taken-10%',}},
	}

	sets.Midcast.Enfeebling.MACC = set_combine(sets.Midcast.Enfeebling, {

	})

	sets.Midcast.Enfeebling.Potency = set_combine(sets.Midcast.Enfeebling, {

	})

	-- Specific gear for spells
	sets.Midcast["Stoneskin"] = set_combine(sets.Midcast.Enhancing, {
		ring1="Stikini Ring +1",
		ring2="Stikini Ring +1",
		waist="Siegel Sash",
		-- neck="Nodens Gorget",
	})
	sets.Midcast["Aquaveil"] = set_combine(sets.Midcast.Enhancing, {
		-- head="Amalric Coif +1"
	})
	sets.Midcast.Refresh = set_combine(sets.Midcast.Enhancing, {
		-- head={ name="Amalric Coif +1"},
		-- legs="Leth. Fuseau +1",
		-- feet="Leth. Houseaux +1",
		-- waist="Gishdubar Sash",
		-- back={ name="Sucellos's Cape", augments={'MND+20','Mag. Acc+20 /Mag. Dmg.+20','Mag. Acc.+10','"Fast Cast"+10','Phys. dmg. taken-10%',}},
	})
	sets.Midcast.Nuke = {
		main={ name="Grioavolr", augments={'INT+13','Mag. Acc.+30','"Mag.Atk.Bns."+26','Magic Damage +9',}},
		ammo="Pemphredo Tathlum",
		head={ name="Merlinic Hood", augments={'Mag. Acc.+22 "Mag.Atk.Bns."+22','"Drain" and "Aspir" potency +3','CHR+2','Mag. Acc.+13','"Mag.Atk.Bns."+1',}},
		body="Jhakri Robe +2",
		hands="Jhakri Cuffs +2",
		legs={ name="Merlinic Shalwar", augments={'Mag. Acc.+25 "Mag.Atk.Bns."+25','Mag. crit. hit dmg. +3%','INT+6','Mag. Acc.+15','"Mag.Atk.Bns."+7',}},
		feet={ name="Merlinic Crackows", augments={'Mag. Acc.+21 "Mag.Atk.Bns."+21','Enmity-1','Mag. Acc.+11',}},
		neck="Sanctity Necklace",
		waist="Eschan Stone",
		left_ear="Hecate's Earring",
		right_ear="Malignance Earring",
		left_ring="Stikini Ring +1",
		right_ring="Stikini Ring +1",
		back={ name="Sucellos's Cape", augments={'MND+20','Mag. Acc+20 /Mag. Dmg.+20','Mag. Acc.+10','"Fast Cast"+10','Phys. dmg. taken-10%',} },
	}

	-- ===================================================================================================================
	--		sets.aftercast
	-- ===================================================================================================================
	--Custome sets for each jobsetup
	sets.Custom = {}
	sets.Custom.Saboteur = {
			-- hands="Leth. Gantherots +1",
	}

	sets.TP = {

	}
	sets.TP.DW = {}
	sets.TP.DT = {}
	sets.TP.ACC = {}

	sets.WS = {}
	--This set is used when OffenseMode is ACC and a WS is used (Augments the WS base set)
	sets.WS.ACC = {}
	-- Note that the Mote library will unlock these gear spots when used.
	sets.TreasureHunter = {
		-- waist="Chaac Belt",
		head="Wh. Rarab Cap +1",
	}

	organizer_items  = {		
		item1 = "Echo Drops",
		item2 = "Remedy",
		item3 = "Holy Water",
	}
	--Command to Lock Style and Set the correct macros
	jobsetup (LockStylePallet,MacroBook,MacroSet)
end

-------------------------------------------------------------------------------------------------------------------
-- DO NOT EDIT BELOW THIS LINE UNLESS YOU NEED TO MAKE JOB SPECIFIC RULES
-------------------------------------------------------------------------------------------------------------------

--Adjust custom precast actions
function pretarget_custom(spell,action)

end
-- Augment basic equipment sets
function precast_custom(spell)
	equipSet = {}

	return equipSet
end
-- Augment basic equipment sets
function midcast_custom(spell)
	equipSet = {}
	if buffactive['Saboteur'] then
		equipSet = sets.Custom.Saboteur
	end
	return equipSet
end
-- Augment basic equipment sets
function aftercast_custom(spell)
	equipSet = {}
	if not buffactive['Composure'] and spell.name ~=  "Composure" then
		add_to_chat(8,'Composure is down')
	end
	return equipSet
end
--Function is called when the player gains or loses a buff
function buff_change_custom(name,gain)
	equipSet = {}

	return equipSet
end
--This function is called when a update request the correct equipment set
function choose_set_custom()
	equipSet = {}

	return equipSet
end
--Function is called when the player changes states
function status_change_custom(new,old)
	equipSet = {}
	if T{'Idle','Resting'}:contains(new) then
		if player.tp > 500 then
			windower.add_to_chat(8,'TP over 500 Locking weapons')
			disable('main')
			disable('sub')
		else
			enable('main')
			enable('sub')
		end
	end
	return equipSet
end
--Function is called when a self command is issued
function self_command_custom(command)

end