
---- METAL WALL :
core.register_node("zombies4test:metal_wall", {
	description = "Metal Wall",
	tiles = {"metal_wallpng.png"},
	groups = {cracky = 3},
        drop = "zombies4test:metal_wall",

	
})

-- BARBED WIRE :
core.register_node("zombies4test:barbed_wire", {
 	drawtype = "plantlike",
	description = "Barbed Wire",
	tiles = {"barbed_wire.png"},
	use_texture_alpha = "blend",
	groups = {cracky = 3},
	paramtype = "light",
	walkable = true,
	damage_per_second = 3,
        drop = "zombies4test:barbed_wire",

        
     selection_box = {
		type = "fixed",
		fixed = {-0.3, -0.5, -0.3, 0.3, 0.2, 0.3},
	},
	
	node_box = {
		type = "fixed", 
		fixed = {-0.3, -0.5, -0.3, 0.3, 0.2, 0.3},
	},
	
	
})


-- GRID :
core.register_node("zombies4test:grid", {
 	drawtype = "nodebox",
	description = "Grid",
	tiles = {"grid.png"},
	use_texture_alpha = "blend",
	groups = {cracky = 3},
	paramtype = "light",
	paramtype2 = "facedir",
	walkable = true,
        drop = "zombies4test:grid",

        
     selection_box = {
		type = "fixed",
		fixed = {-0.5, -0.5, 0.3, 0.5, 0.5, 0.5},
	},
	
	node_box = {
		type = "fixed", 
		fixed = {-0.5, -0.5, 0.45, 0.5, 0.5, 0.5},
	},
	
	
})


--- IRON PLATE 
core.register_node("zombies4test:iron_plate", {
 	drawtype = "nodebox",
	description = "Iron Plate",
	tiles = {"iron_plate.png"},
	use_texture_alpha = "blend",
	groups = {cracky = 3},
	paramtype = "light",
	paramtype2 = "facedir",
	walkable = true,
        drop = "zombies4test:iron_plate",

        
     selection_box = {
		type = "fixed",
		fixed = {-0.5, -0.5, 0.3, 0.5, 0.5, 0.5},
	},
	
	node_box = {
		type = "fixed", 
		fixed = {-0.5, -0.5, 0.45, 0.5, 0.5, 0.5},
	},
	
	
})



---- SAND BAG :
core.register_node("zombies4test:sandbag", {
	description = "Sand Bag",
	tiles = {"sandbag.png"},
	groups = {cracky = 3},
        drop = "zombies4test:sandbag",

	
})


-- BADED WIRE : ---------------------------------------------------------------
core.register_node("zombies4test:wirefence", {
	description = "Wire fence",
	drawtype = "mesh",
	mesh = "wire.obj",
	use_texture_alpha = "blend",
	tiles = {"barbed-wire.png"},
	paramtype = "light",
	paramtype2 = "facedir",
	sunlight_propagates = true,
	walkable = true, 
	floodable = false,
	damage_per_second =2,
	groups = {cracky = 3, oddly_breakable_by_hand = 1},
	drop = "zombies4test:wirefence",

	
	selection_box = {
		type = "fixed",
		fixed = {-0.3, -0.4, -0.3, 0.3, 0.2, 0.3},
	},
	
	node_box = {
		type = "fixed", 
		fixed = {-0.3, -0.4, -0.3, 0.3, 0.2, 0.3},
	},
	
	
	
	
	
})


-- punji_sticks: --------------------------------------------------------------
core.register_node("zombies4test:punji_sticks", {
	description = "Punji Sticks",
	drawtype = "mesh",
	mesh = "punji_sticks.obj",
	use_texture_alpha = "blend",
	tiles = {"punjisticks.png"},
	paramtype = "light",
	paramtype2 = "facedir",
	sunlight_propagates = true,
	walkable = false, 
	floodable = false,
	damage_per_second =2,
	groups = {cracky = 3, oddly_breakable_by_hand = 1},
	drop = "zombies4test:punji_sticks",
	
	selection_box = {
		type = "fixed",
		fixed = {-0.3, -0.5, -0.3, 0.3, 0.2, 0.3},
	},
	
	node_box = {
		type = "fixed", 
		fixed = {-0.3, -0.5, -0.3, 0.3, 0.2, 0.3},
	},
	
	
	
	
	
})




