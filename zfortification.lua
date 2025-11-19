---- METAL WALL :
core.register_node("zombies4test:metal_wall", {
	description = "Metal Wall",
	tiles = {"metal_wallpng.png"},
	groups = {cracky = 3},
	_mcl_hardness = 2,
        drop = "zombies4test:metal_wall",
        ounds = {        
		footstep = {name = "metal_footstep", gain = 0.5,max_hear_distance = 10},
		dug = {name = "dug_metal.1", gain = 0.5,max_hear_distance = 10},
        }	
})
-- BARBED WIRE :
core.register_node("zombies4test:barbed_wire", {
 	drawtype = "mesh",
	mesh = "barbedwire.obj",
	description = "Barbed Wire",
	tiles = {"barbedwire.png"},
	use_texture_alpha = "blend",
	groups = {snappy = 3},
	 _mcl_hardness = 0.2,
	paramtype = "light",
	paramtype2 = "facedir",
	walkable = false,
	move_resistance = 7,
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
	_mcl_hardness = 2,
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
	_mcl_hardness = 2,
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
	groups = {crumbly = 3},
	_mcl_hardness = 0.5,
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
	_mcl_hardness = 2,
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
	damage_per_second =1,
	groups = {cracky = 3, oddly_breakable_by_hand = 2},
	_mcl_hardness = 2,
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

-- PLANKS BARRICADE :
core.register_node("zombies4test:planks_barricade", {
	description = "Planks Barricade",
	drawtype = "mesh",
	mesh = "planks_barricade.obj",
	tiles = {"planks_barricade.png"},
	paramtype = "light",
	paramtype2 = "facedir",
	sunlight_propagates = true,
	use_texture_alpha = "blend",
	walkable = true, 
	floodable = false,
	groups = {wood=1,oddly_breakable_by_hand = 2},
	_mcl_hardness = 2,	
	selection_box = {
		type = "fixed",
		fixed = {-0.5, -0.5, 0.43, 0.5, 0.5, 0.5},
	},
	
	node_box = {
		type = "fixed", 
		fixed = {-0.5, -0.5, -0.5, 0.5, 0.5, 0.5},
	},	
})
