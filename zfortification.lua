
---- METAL WALL :
minetest.register_node("zombies4test:metal_wall", {
	description = "Metal Wall",
	tiles = {"metal_wallpng.png"},
	-- light_source = 4, -- somente para identificar o bloco
	groups = {cracky = 3},
        drop = "zombies4test:metal_wall",

	
})

-- BARBED WIRE :

minetest.register_node("zombies4test:barbed_wire", {
 	drawtype = "plantlike",
	description = "Barbed Wire",
	tiles = {"barbed_wire.png"},
	use_texture_alpha = "blend",
	-- light_source = 4, -- somente para identificar o bloco
	groups = {cracky = 3},
	paramtype = "light",
	walkable = true,
	damage_per_second = 3,
        drop = "zombies4test:barbed_wire",

        
     selection_box = {
		type = "fixed",
		--    esqueda,altura,tras..,direita ,negativo aumenta para baixo, positivo aumenta para cima
		fixed = {-0.3, -0.5, -0.3, 0.3, 0.2, 0.3},
	},
	
	node_box = {
		type = "fixed", 
		fixed = {-0.3, -0.5, -0.3, 0.3, 0.2, 0.3},
	},
	
	
})


-- GRID :

minetest.register_node("zombies4test:grid", {
 	drawtype = "nodebox",
	description = "Grid",
	tiles = {"grid.png"},
	use_texture_alpha = "blend",
	-- light_source = 4, -- somente para identificar o bloco
	groups = {cracky = 3},
	paramtype = "light",
	paramtype2 = "facedir",
	walkable = true,
	-- damage_per_second = 1,
        drop = "zombies4test:wirefence",

        
     selection_box = {
		type = "fixed",
		--    esqueda,altura,tras..,direita ,negativo aumenta para baixo, positivo aumenta para cima
		fixed = {-0.5, -0.5, 0.3, 0.5, 0.5, 0.5},
	},
	
	node_box = {
		type = "fixed", 
		fixed = {-0.5, -0.5, 0.45, 0.5, 0.5, 0.5},
	},
	
	
})


--- IRON PLATE 
minetest.register_node("zombies4test:iron_plate", {
 	drawtype = "nodebox",
	description = "Iron Plate",
	tiles = {"iron_plate.png"},
	use_texture_alpha = "blend",
	-- light_source = 4, -- somente para identificar o bloco
	groups = {cracky = 3},
	paramtype = "light",
	paramtype2 = "facedir",
	walkable = true,
	-- damage_per_second = 1,
        drop = "zombies4test:iron_plate",

        
     selection_box = {
		type = "fixed",
		--    esqueda,altura,tras..,direita ,negativo aumenta para baixo, positivo aumenta para cima
		fixed = {-0.5, -0.5, 0.3, 0.5, 0.5, 0.5},
	},
	
	node_box = {
		type = "fixed", 
		fixed = {-0.5, -0.5, 0.45, 0.5, 0.5, 0.5},
	},
	
	
})



---- SAND BAG :

minetest.register_node("zombies4test:sandbag", {
	description = "Sand Bag",
	tiles = {"sandbag.png"},
	-- light_source = 4, -- somente para identificar o bloco
	groups = {cracky = 3},
        drop = "zombies4test:sandbag",

	
})






-- BADED WIRE : ---------------------------------------------------------------
minetest.register_node("zombies4test:wirefence", {
	description = "Wire fence",
	drawtype = "mesh",
	mesh = "wire.obj",
	use_texture_alpha = "blend",
	--inventory_image = "",
	--wield_image = "barbed_wire.png",
	tiles = {"barbed-wire.png"},
	paramtype = "light",
	paramtype2 = "facedir",
	--on_place = minetest.rotate_node,
	sunlight_propagates = true,
	walkable = true, 
	floodable = false,
	damage_per_second =2,
	groups = {cracky = 3, oddly_breakable_by_hand = 1},
	drop = "zombies4test:wirefence",

	
	selection_box = {
		type = "fixed",
		--    esqueda,altura,tras..,direita ,negativo aumenta para baixo, positivo aumenta para cima
		fixed = {-0.3, -0.4, -0.3, 0.3, 0.2, 0.3},
	},
	
	node_box = {
		type = "fixed", 
		fixed = {-0.3, -0.4, -0.3, 0.3, 0.2, 0.3},
	},
	
	
	
	
	
})




-- punji_sticks: --------------------------------------------------------------
minetest.register_node("zombies4test:punji_sticks", {
	description = "Punji Sticks",
	drawtype = "mesh",
	mesh = "punji_sticks.obj",
	use_texture_alpha = "blend",
	--inventory_image = "",
	--wield_image = "punjisticks.png",
	tiles = {"punjisticks.png"},
	paramtype = "light",
	paramtype2 = "facedir",
	--on_place = minetest.rotate_node,
	sunlight_propagates = true,
	walkable = false, 
	floodable = false,
	damage_per_second =2,
	groups = {cracky = 3, oddly_breakable_by_hand = 1},
	drop = "zombies4test:punji_sticks",
	
	selection_box = {
		type = "fixed",
		--    esqueda,altura,tras..,direita ,negativo aumenta para baixo, positivo aumenta para cima
		fixed = {-0.3, -0.5, -0.3, 0.3, 0.2, 0.3},
	},
	
	node_box = {
		type = "fixed", 
		fixed = {-0.3, -0.5, -0.3, 0.3, 0.2, 0.3},
	},
	
	
	
	
	
})











