
local S = core.get_translator("zombies4test")
--- Cudgel 
core.register_tool("zombies4test:baseball_bat", {
	description = S("Baseball bat").."\n"..core.colorize("#fca800","Damage = 4"),
	inventory_image = "baseball_bat.png",
	_mcl_toollike_wield = true,
	tool_capabilities = {
		full_punch_interval = 1.4,
		max_drop_level=0,
		groupcaps={
			snappy={times={[2]=1.4, [3]=0.40}, uses=20, maxlevel=1},
		},
		damage_groups = {fleshy=4},
	},
	
	sound = {
	--breaks = "default_tool_breaks",
	punch_use = "swoosh1",
	punch_use_air ="swoosh1",
	},
	
	groups = {sword = 1}
})

core.register_tool("zombies4test:spiked_baseball_bat", {
	description = S("Spiked Baseball bat").."\n"..core.colorize("#fca800","Damage = 5"),
	inventory_image = "spiked_baseball_bat.png",
	_mcl_toollike_wield = true,
	tool_capabilities = {
		full_punch_interval = 1.4,
		max_drop_level=0,
		groupcaps={
			snappy={times={[2]=1.4, [3]=0.40}, uses=20, maxlevel=1},
		},
		damage_groups = {fleshy=5},
	},
	
	sound = {
	--breaks = "default_tool_breaks",
	punch_use = "swoosh1",
	punch_use_air ="swoosh1",
	},
	
	groups = {sword = 1}
})

-- NIGHT STICK (Drop Zombie)
core.register_tool("zombies4test:night_stick", {
	description = S("Night Stick").."\n"..core.colorize("#fca800","Damage = 4"),
	inventory_image = "night_stick.png",
	_mcl_toollike_wield = true,
	tool_capabilities = {
		full_punch_interval = 1.4,
		max_drop_level=0,
		groupcaps={
			snappy={times={[2]=1.4, [3]=0.40}, uses=30, maxlevel=1},
		},
		damage_groups = {fleshy=4},
	},
	
	sound = {
	--breaks = "default_tool_breaks",
	punch_use = "swoosh1",
	punch_use_air ="swoosh1",
	},
	
	groups = {sword = 1}
})

-- HAMMER CLAW:
core.register_tool("zombies4test:claw_hammer", {
	description = S("Claw Hammer").."\n"..core.colorize("#fca800","Damage = 5"),
	inventory_image = "claw_hammer.png",
	_mcl_toollike_wield = true,
	tool_capabilities = {
		full_punch_interval = 1.2,
		max_drop_level=0,
		groupcaps={
			snappy={times={[2]=1.4, [3]=0.40}, uses=20, maxlevel=1},
		},
		damage_groups = {fleshy=5},
	},
	
	sound = {
	--breaks = "default_tool_breaks",
	punch_use = "swoosh1",
	punch_use_air ="swoosh1",
	},
	
	groups = {sword = 1}
})

-- crowbar:
core.register_tool("zombies4test:crowbar", {
	description = S("Crowbar").."\n"..core.colorize("#fca800","Damage = 6"),
	inventory_image = "crowbar.png",
	_mcl_toollike_wield = true,
	tool_capabilities = {
		full_punch_interval = 1.8,
		max_drop_level=1,
		groupcaps={
			snappy={times={[1]=2.5, [2]=1.20, [3]=0.35}, uses=30, maxlevel=2},
		},
		damage_groups = {fleshy=6},
	},
	
	sound = {
	--breaks = "default_tool_breaks",
	punch_use = "swoosh1",
	punch_use_air ="swoosh1",
	},
	
	groups = {sword = 1}
})

-- KNIFE:
core.register_tool("zombies4test:knife", {
	description = S("Knife").."\n"..core.colorize("#fca800","Damage = 6"),
	inventory_image = "knife.png",
	_mcl_toollike_wield = true,
	tool_capabilities = {
		full_punch_interval = 0.8,
		max_drop_level=1,
		groupcaps={
			snappy={times={[1]=2.5, [2]=1.20, [3]=0.35}, uses=30, maxlevel=2},
		},
		damage_groups = {fleshy=6},
	},
	
	sound = {
	--breaks = "default_tool_breaks",
	punch_use = "swoosh1",
	punch_use_air ="swoosh1",
	},
	
	groups = {sword = 1}
})

-- PAN: (Cozinha) -- cuspidor
core.register_tool("zombies4test:pan", {
	description = S("Pan").."\n"..core.colorize("#fca800","Damage = 5"),
	inventory_image = "pan.png",
	_mcl_toollike_wield = true,
	tool_capabilities = {
		full_punch_interval = 1.2,
		max_drop_level=1,
		groupcaps={
			snappy={times={[1]=2.5, [2]=1.20, [3]=0.35}, uses=20, maxlevel=2},
		},
		damage_groups = {fleshy=5},
	},	
	sound = {
	--breaks = "default_tool_breaks",
	punch_use = "pan", -- falta som
	punch_use_air ="swoosh1", -- falta som
	},	
	groups = {sword = 1}
})

-- SPATULA:
core.register_tool("zombies4test:spatula", {
	description = S("Spatula").."\n"..core.colorize("#fca800","Damage = 6"),
	inventory_image = "spatula.png",
	_mcl_toollike_wield = true,
	tool_capabilities = {
		full_punch_interval = 3.0,
		max_drop_level=1,
		groupcaps={
			snappy={times={[1]=2.5, [2]=1.20, [3]=0.35}, uses=20, maxlevel=2},
		},
		damage_groups = {fleshy=6},
	},	
	sound = {
	--breaks = "default_tool_breaks",
	punch_use = "swoosh1", -- falta som
	punch_use_air ="swoosh1", -- falta som
	},	
	groups = {sword = 1}
})

-- HANGER: (quarto)
core.register_tool("zombies4test:hanger", {
	description = S("Hanger").."\n"..core.colorize("#fca800","Damage = 3"),
	inventory_image = "hanger.png",
	_mcl_toollike_wield = true,
	tool_capabilities = {
		full_punch_interval = 1.6,
		max_drop_level=1,
		groupcaps={
			snappy={times={[1]=2.5, [2]=1.20, [3]=0.35}, uses=20, maxlevel=2},
		},
		damage_groups = {fleshy=3},
	},	
	sound = {
	--breaks = "default_tool_breaks",
	punch_use = "swoosh1", -- falta som
	punch_use_air ="swoosh1", -- falta som
	},	
	groups = {sword = 1}
})

-- tennis_racket: (quarto)
core.register_tool("zombies4test:tennis_racket", {
	description = S("Tennis Racket").."\n"..core.colorize("#fca800","Damage = 2"),
	inventory_image = "tennis_racket.png",
	_mcl_toollike_wield = true,
	tool_capabilities = {
		full_punch_interval = 2.5,
		max_drop_level=1,
		groupcaps={
			snappy={times={[1]=2.5, [2]=1.20, [3]=0.35}, uses=20, maxlevel=2},
		},
		damage_groups = {fleshy=2},
	},	
	sound = {
	--breaks = "default_tool_breaks",
	punch_use = "swoosh1", -- falta som
	punch_use_air ="swoosh1", -- falta som
	},	
	groups = {sword = 1}
})

--- AXE : -- Lenhador
core.register_tool("zombies4test:fireaxe", {
	description = S("Fireaxe").."\n"..core.colorize("#fca800","Damage = 8"),
	inventory_image = "axe_zombie.png",
	_mcl_toollike_wield = true,
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=1,
		groupcaps={
			choppy={times={[1]=2.50, [2]=1.40, [3]=1.00}, uses=20, maxlevel=2},
		},
		damage_groups = {fleshy=5},
	},
	
	sound = {
	--breaks = "default_tool_breaks",
	punch_use = "swoosh1",
	punch_use_air ="swoosh1",
	},
	
	groups = {axe = 1}
})

---Machete : --  palhaço
core.register_tool("zombies4test:machete", {
	description = S("Machete").."\n"..core.colorize("#fca800","Damage = 7"),
	inventory_image = "machete.png",
	_mcl_toollike_wield = true,
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=1,
		groupcaps={
			choppy={times={[1]=2.50, [2]=1.40, [3]=1.00}, uses=20, maxlevel=2},
		},
		damage_groups = {fleshy=7},
	},
	
	sound = {
	--breaks = "default_tool_breaks",
	punch_use = "swoosh1",
	punch_use_air ="swoosh1",
	},
	
	groups = {axe = 1}
})

-- Cleaver: (Cozinha) -- CUSPIDOR
core.register_tool("zombies4test:cleaver", {
	description = S("Cleaver").."\n"..core.colorize("#fca800","Damage = 7"),
	inventory_image = "cleaver.png",
	_mcl_toollike_wield = true,
	tool_capabilities = {
		full_punch_interval = 1.6,
		max_drop_level=1,
		groupcaps={
			snappy={times={[1]=2.5, [2]=1.20, [3]=0.35}, uses=30, maxlevel=2},
		},
		damage_groups = {fleshy=7},
	},	
	sound = {
	--breaks = "default_tool_breaks",
	punch_use = "swoosh1", -- falta som
	punch_use_air ="swoosh1", -- falta som
	},	
	groups = {sword = 1}
})

--Fire Extintor: -- boomer
core.register_tool("zombies4test:fire_extintor", {
	description = S("Fire Extintor").."\n"..core.colorize("#fca800","Damage = 8"),
	inventory_image = "fire_extintor.png",
	_mcl_toollike_wield = true,
	tool_capabilities = {
		full_punch_interval = 0.9,
		max_drop_level=1,
		groupcaps={
			snappy={times={[1]=2.5, [2]=1.20, [3]=0.35}, uses=20, maxlevel=2},
		},
		damage_groups = {fleshy=8},
	},	
	sound = {
	--breaks = "default_tool_breaks",
	punch_use = "swoosh1", -- falta som
	punch_use_air ="swoosh1", -- falta som
	},	
	groups = {sword = 1}
})

-- CLAWS: -- Noiva
core.register_tool("zombies4test:claws", {
	description = S("Claws").."\n"..core.colorize("#fca800","Damage = 10"),
	inventory_image = "claws.png",
	_mcl_toollike_wield = true,
	tool_capabilities = {
		full_punch_interval = 2.5,
		max_drop_level=1,
		groupcaps={
			snappy={times={[1]=2.5, [2]=1.20, [3]=0.35}, uses=20, maxlevel=2},
		},
		damage_groups = {fleshy=10},
	},	
	sound = {
	--breaks = "default_tool_breaks",
	punch_use = "swoosh1", -- falta som
	punch_use_air ="swoosh1", -- falta som
	},	
	groups = {sword = 1}
})

-- KATANA : (DRops zombie)
core.register_tool("zombies4test:katana", {
	description = S("Katana").."\n"..core.colorize("#fca800","Damage = 12"),
	range = 6,
	_mcl_toollike_wield = true,
	--wield_scale = {x = 1.0, y = 1.0, z = 1.0},
	inventory_image = "katana.png",
	tool_capabilities = {
		full_punch_interval = 2.0,
		max_drop_level=1,
		groupcaps={
			snappy={times={[1]=2.0, [2]=1.0, [3]=0.35}, uses=25, maxlevel=2},
		},
		damage_groups = {fleshy=12},
	},
	
	sound = {
	--breaks = "default_tool_breaks",
	punch_use = "swoosh1",
	punch_use_air ="swoosh1",
	},
	
	groups = {sword = 1}
})

core.register_tool("zombies4test:chainsaw", {
	description = S("Chainsaw").."\n"..core.colorize("#fca800","Damage = 20"),
	range = 3,
	_mcl_toollike_wield = true,
	wield_scale = {x = 1.5, y = 1.5, z = 1.5},
	inventory_image = "chainsaw.png",
	tool_capabilities = {
		full_punch_interval = 3.0,
		max_drop_level=1,
		groupcaps={
			snappy={times={[1]=2.0, [2]=1.0, [3]=0.35}, uses=25, maxlevel=2},
		},
		damage_groups = {fleshy=20},
	},

	sound = {
	--breaks = "default_tool_breaks",
	punch_use = "chainsaw",
	punch_use_air ="chainsaw",
	},

	groups = {sword = 1}
})

