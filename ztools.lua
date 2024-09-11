--[[

Balanceamento

baseball_bat = 5
claw_hammer = 5
crowbar = 6
knife = 6
machete = 7
fireaxe = 8
Katana = 9
chainsaw = 11

]]

--- Cudgel 
minetest.register_tool("zombies4test:baseball_bat", {
	description = "Baseball bat\n"..core.colorize("#ff0000", "Damage = 5"),
	inventory_image = "Cudgel_stone.png",
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

-- Claw
minetest.register_tool("zombies4test:claw_hammer", {
	description = "Claw Hammer\n"..core.colorize("#ff0000", "Damage = 5"),
	inventory_image = "claw_hammer.png",
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
minetest.register_tool("zombies4test:crowbar", {
	description = "Crowbar\n"..core.colorize("#ff0000", "Damage = 6"),
	inventory_image = "crowbar.png",
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

-- KNIFE:
minetest.register_tool("zombies4test:knife", {
	description = "Knife\n"..core.colorize("#ff0000", "Damage = 6"),
	inventory_image = "knife.png",
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



--- machete :

minetest.register_tool("zombies4test:machete", {
	description = "Machete\n"..core.colorize("#ff0000", "Damage = 7"),
	inventory_image = "machete.png",
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


--- AXE :

minetest.register_tool("zombies4test:fireaxe", {
	description = "Fireaxe\n"..core.colorize("#ff0000", "Damage = 8"),
	inventory_image = "axe_zombie.png",
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=1,
		groupcaps={
			choppy={times={[1]=2.50, [2]=1.40, [3]=1.00}, uses=20, maxlevel=2},
		},
		damage_groups = {fleshy=8},
	},
	
	sound = {
	--breaks = "default_tool_breaks",
	punch_use = "swoosh1",
	punch_use_air ="swoosh1",
	},
	
	groups = {axe = 1}
})





-- KATANA :
minetest.register_tool("zombies4test:Katana", {
	description = "Katana\n"..core.colorize("#ff0000", "Damage = 9"),
	range = 6,
	--wield_scale = {x = 1.0, y = 1.0, z = 1.0},
	inventory_image = "katana.png",
	tool_capabilities = {
		full_punch_interval = 0.8,
		max_drop_level=1,
		groupcaps={
			snappy={times={[1]=2.0, [2]=1.0, [3]=0.35}, uses=25, maxlevel=2},
		},
		damage_groups = {fleshy=9},
	},
	
	sound = {
	--breaks = "default_tool_breaks",
	punch_use = "swoosh1",
	punch_use_air ="swoosh1",
	},
	
	groups = {sword = 1}
})




minetest.register_tool("zombies4test:chainsaw", {
	description = "Chainsaw\n"..core.colorize("#ff0000", "Damage = 11"),
	range = 3,
	--wield_scale = {x = 1.0, y = 1.0, z = 1.0},
	inventory_image = "Chainsaw.png",
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=1,
		groupcaps={
			snappy={times={[1]=2.0, [2]=1.0, [3]=0.35}, uses=25, maxlevel=2},
		},
		damage_groups = {fleshy=11},
	},

	sound = {
	--breaks = "default_tool_breaks",
	punch_use = "Chainsaw",
	punch_use_air ="Chainsaw",
	},

	groups = {sword = 1}
})






