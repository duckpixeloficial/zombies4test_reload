

---- HOSPITAL BLOCK :

minetest.register_node("zombies4test:whiteblock", {
	description = "White Block",
	tiles = {"white_block.png"},
	paramtype2 = "facedir",
	----groups = {cracky = 3},
        drop = "zombies4test:whiteblock",
       
        
        sounds = {        
        footstep = {name = "stone_step", gain = 0.5},
        --dig = {name = "", gain = 0.5},
        --dug = {name = "", gain = 1.0},
        --place = {name = "", gain = 1.0},
         }
	
})

minetest.register_node("zombies4test:greenblock", {
	description = "Green Block",
	tiles = {"green_node.png"},
	paramtype2 = "facedir",
	----groups = {cracky = 3},
        drop = "zombies4test:greenblock",
        
        sounds = {        
		footstep = {name = "stone_step", gain = 0.5},
		--dig = {name = "", gain = 0.5},
		--dug = {name = "", gain = 1.0},
		--place = {name = "", gain = 1.0},
         }
	
})

minetest.register_node("zombies4test:redblock", {
	description = "Red Block",
	tiles = {"red_node.png"},
	paramtype2 = "facedir",
	----groups = {cracky = 3},
        drop = "zombies4test:redblock",
       
        sounds = {        
		footstep = {name = "stone_step", gain = 0.5},
		--dig = {name = "", gain = 0.5},
		--dug = {name = "", gain = 1.0},
		--place = {name = "", gain = 1.0},
         }	
	
})

minetest.register_node("zombies4test:grayblock", {
	description = "Gray Block",
	tiles = {"gray_node.png"},
	paramtype2 = "facedir",
	----groups = {cracky = 3},
        drop = "zombies4test:grayblock",
       
        sounds = {        
		footstep = {name = "stone_step", gain = 0.5},
		--dig = {name = "", gain = 0.5},
		--dug = {name = "", gain = 1.0},
		--place = {name = "", gain = 1.0},
         }
	
})



---- ROAD :

minetest.register_node("zombies4test:road", {
	description = "Road",
	tiles = {"road.png"},
	paramtype2 = "facedir",
	--groups = {cracky = 3},
        drop = "zombies4test:road",
        
         sounds = {        
		footstep = {name = "stone_step", gain = 0.5},
		--dig = {name = "", gain = 0.5},
		--dug = {name = "", gain = 1.0},
		--place = {name = "", gain = 1.0},
         }
	
})



---- ROAD 2 :

minetest.register_node("zombies4test:road2", {
	description = "Road 2",
	tiles = {"road_y.png"},
	paramtype2 = "facedir",
	--groups = {cracky = 3},
        drop = "zombies4test:road2",
        
         sounds = {        
		footstep = {name = "stone_step", gain = 0.5},
		--dig = {name = "", gain = 0.5},
		--dug = {name = "", gain = 1.0},
		--place = {name = "", gain = 1.0},
         }
	
})



---- ROAD 2 :
minetest.register_node("zombies4test:road3", {
	description = "Road 3",
	tiles = {"curvedroad.png"},
	paramtype2 = "facedir",
	--groups = {cracky = 3},
        drop = "zombies4test:road3",
        
         sounds = {        
		footstep = {name = "stone_step", gain = 0.5},
		--dig = {name = "", gain = 0.5},
		--dug = {name = "", gain = 1.0},
		--place = {name = "", gain = 1.0},
         }
	
})



---- Road Stop Line:
minetest.register_node("zombies4test:roadstopline", {
	description = "Road Stop Line",
	tiles = {"road_stop_line.png"},
	paramtype2 = "facedir",
	--groups = {cracky = 3},
        drop = "zombies4test:roadstopline",
       
        sounds = {        
		footstep = {name = "stone_step", gain = 0.5},
		--dig = {name = "", gain = 0.5},
		--dug = {name = "", gain = 1.0},
		--place = {name = "", gain = 1.0},
         }
	
})




---- SIDEWALK :
minetest.register_node("zombies4test:sidewalk", {
	description = "Sidewalk",
	tiles = {"sidewalk.png"},
	paramtype2 = "facedir",
	groups = {cracky = 3},
        drop = "zombies4test:sidewalk",
        
         sounds = {        
		footstep = {name = "stone_step", gain = 0.5},
		--dig = {name = "", gain = 0.5},
		--dug = {name = "", gain = 1.0},
		--place = {name = "", gain = 1.0},
         }
	
})




---- BRICK MOTEL :
minetest.register_node("zombies4test:brick_motel", {
	description = "Brick Motel",
	tiles = {"brick_motel.png"},
	paramtype2 = "facedir",
	--groups = {cracky = 3},
        drop = "zombies4test:brick_motel",
        
         sounds = {        
		footstep = {name = "stone_step", gain = 0.5},
		--dig = {name = "", gain = 0.5},
		--dug = {name = "", gain = 1.0},
		--place = {name = "", gain = 1.0},
         }
	
})


--- BRICK Home :
minetest.register_node("zombies4test:brick_homes", {
	description = "Brick Homes",
	tiles = {"brick_home.png"},
	paramtype2 = "facedir",
	--groups = {cracky = 3},
        drop = "zombies4test:brick_motel",
        
         sounds = {        
		footstep = {name = "stone_step", gain = 0.5},
		--dig = {name = "", gain = 0.5},
		--dug = {name = "", gain = 1.0},
		--place = {name = "", gain = 1.0},
         }
	
})



---- FLOOR BLOCK :
minetest.register_node("zombies4test:floor_block", {
	description = "Floor Block",
	tiles = {"floor_block.png"},
	paramtype2 = "facedir",
	--groups = {cracky = 3},
        drop = "zombies4test:floor_block",
 	
 	 sounds = {        
		footstep = {name = "stone_step", gain = 0.5},
		--dig = {name = "", gain = 0.5},
		--dug = {name = "", gain = 1.0},
		--place = {name = "", gain = 1.0},
         }
	
})

---- MEDICAL TENT :
minetest.register_node("zombies4test:medicaltentblock", {
	description = "Medical Tent Block",
	tiles = {"medical_tent_block.png"},
	paramtype2 = "facedir",
	--groups = {cracky = 3},
        drop = "zombies4test:medicaltentblock",
       
        sounds = {        
		footstep = {name = "stone_step", gain = 0.5},
		--dig = {name = "", gain = 0.5},
		--dug = {name = "", gain = 1.0},
		--place = {name = "", gain = 1.0},
         }
	
})


---- WOOD TENT :
minetest.register_node("zombies4test:wood_cabin", {
	description = "Wood Cabin",
	tiles = {"wood_cabin.png"},
	paramtype2 = "facedir",
	--groups = {cracky = 3},
        drop = "zombies4test:wood_cabin",
        
         sounds = {        
		footstep = {name = "wood_steep", gain = 0.5},
		--dig = {name = "", gain = 0.5},
		--dug = {name = "", gain = 1.0},
		--place = {name = "", gain = 1.0},
         }
	
})

minetest.register_node("zombies4test:wood_cabin_2", {
	description = "Wood Cabin 2",
	tiles = {"wood_cabin_2.png"},
	paramtype2 = "facedir",
	--groups = {cracky = 3},
        drop = "zombies4test:wood_cabin",
        
        sounds = {        
		footstep = {name = "wood_steep", gain = 0.5},
		--dig = {name = "", gain = 0.5},
		--dug = {name = "", gain = 1.0},
		--place = {name = "", gain = 1.0},
         }
	
})

-- STRIS ============================================================
minetest.register_node("zombies4test:stair_coal", {
    description = "Stair Coal",
    tiles = {"default_coal_block.png"},
    drawtype = "nodebox",
    paramtype = "light",
    paramtype2 = "facedir",
    --groups = {cracky = 3},
    drop = "zombies4test:stair_coal",
    
    sounds = {        
		footstep = {name = "stone_step", gain = 0.5},
		--dig = {name = "", gain = 0.5},
		--dug = {name = "", gain = 1.0},
		--place = {name = "", gain = 1.0},
         },
         
    node_box = {
        type = "fixed",
        fixed = {
            {-0.5, -0.5, -0.5, 0.5, 0, 0.5},
            {-0.5, 0, 0, 0.5, 0.5, 0.5},
        },
    },
    
       on_place = minetest.rotate_node,
})


minetest.register_node("zombies4test:stair_wood_cabin", {
    description = "Stair Wood Cabin",
    tiles = {"wood_cabin.png"},
    drawtype = "nodebox",
    paramtype = "light",
    paramtype2 = "facedir",
    --groups = {cracky = 3},
    drop = "zombies4test:stair_wood_cabin",
    
    sounds = {        
		footstep = {name = "wood_steep", gain = 0.5},
		--dig = {name = "", gain = 0.5},
		--dug = {name = "", gain = 1.0},
		--place = {name = "", gain = 1.0},
         },
         
    node_box = {
        type = "fixed",
        fixed = {
            {-0.5, -0.5, -0.5, 0.5, 0, 0.5},
            {-0.5, 0, 0, 0.5, 0.5, 0.5},
        },
    },
    
       on_place = minetest.rotate_node,
})


minetest.register_node("zombies4test:stair_wood_cabin_2", {
    description = "Stair Wood Cabin 2",
    tiles = {"wood_cabin_2.png"},
    drawtype = "nodebox",
    paramtype = "light",
    paramtype2 = "facedir",
    --groups = {cracky = 3},
    drop = "zombies4test:stair_wood_cabin_2",
    
    sounds = {        
		footstep = {name = "wood_steep", gain = 0.5},
		--dig = {name = "", gain = 0.5},
		--dug = {name = "", gain = 1.0},
		--place = {name = "", gain = 1.0},
         },
         
    node_box = {
        type = "fixed",
        fixed = {
            {-0.5, -0.5, -0.5, 0.5, 0, 0.5},
            {-0.5, 0, 0, 0.5, 0.5, 0.5},
        },
    },
    
       on_place = minetest.rotate_node,
})


minetest.register_node("zombies4test:motel_glass", {
    description = "Motel Glass",
    tiles = {"motel_glass.png"}, 
    is_ground_content = true,
    groups = {cracky = 1, oddly_breakable_by_hand = 1,glass=1},    
    use_texture_alpha = "blend",
    sunlight_propagates = false,
    drawtype = "glasslike",
    paramtype = "light",
    --light_source = 0,
    
    sounds = {        
		-- footstep = {name = "", gain = 0.5},
		--dig = {name = "", gain = 0.5},
		--dug = {name = "", gain = 1.0},
		--place = {name = "", gain = 1.0},
         }
         
})


minetest.register_node("zombies4test:zgray_stair", {
    description = "z Gray Stair",
    tiles = {"gray_node.png"}, -- Certifique-se de ter a textura correspondente
    --groups = {choppy = 2, oddly_breakable_by_hand = 2},
    paramtype2 = "facedir",
    drawtype = "nodebox",
    
    sounds = {        
		footstep = {name = "stone_step", gain = 0.5},
		--dig = {name = "", gain = 0.5},
		--dug = {name = "", gain = 1.0},
		--place = {name = "", gain = 1.0},
         },
         
    node_box = {
			type = "fixed",
			fixed = {
				{-0.5, -0.5, -0.5, 0.5, 0.0, 0.5},
				{-0.5, 0.0, 0.0, 0.5, 0.5, 0.5},
			},
		},
    on_place = minetest.rotate_node,
})


minetest.register_node("zombies4test:zgreen_stair", {
    description = "Z Green Stair",
    tiles = {"medical_tent_block.png"}, -- Certifique-se de ter a textura correspondente
    --groups = {choppy = 2, oddly_breakable_by_hand = 2},
    paramtype2 = "facedir",
    drawtype = "nodebox",
    
      sounds = {        
		footstep = {name = "stone_step", gain = 0.5},
		--dig = {name = "", gain = 0.5},
		--dug = {name = "", gain = 1.0},
		--place = {name = "", gain = 1.0},
         },
         
    node_box = {
			type = "fixed",
			fixed = {
				{-0.5, -0.5, -0.5, 0.5, 0.0, 0.5},
				{-0.5, 0.0, 0.0, 0.5, 0.5, 0.5},
			},
		},
    on_place = minetest.rotate_node,
})


minetest.register_node("zombies4test:zred_stair", {
    description = "Z Red Stair",
    tiles = {"red_node.png"}, -- Certifique-se de ter a textura correspondente
    --groups = {choppy = 2, oddly_breakable_by_hand = 2},
    paramtype2 = "facedir",
    drawtype = "nodebox",
    
      sounds = {        
		footstep = {name = "stone_step", gain = 0.5},
		--dig = {name = "", gain = 0.5},
		--dug = {name = "", gain = 1.0},
		--place = {name = "", gain = 1.0},
         },
         
    node_box = {
			type = "fixed",
			fixed = {
				{-0.5, -0.5, -0.5, 0.5, 0.0, 0.5},
				{-0.5, 0.0, 0.0, 0.5, 0.5, 0.5},
			},
		},
   on_place = minetest.rotate_node,
})




minetest.register_node("zombies4test:sidewalk_stair", {
    description = "Z sidewalk Stair",
    tiles = {"sidewalk.png"}, -- Certifique-se de ter a textura correspondente
    --groups = {choppy = 2, oddly_breakable_by_hand = 2},
    paramtype2 = "facedir",
    drawtype = "nodebox",
    
      sounds = {        
		footstep = {name = "stone_step", gain = 0.5},
		--dig = {name = "", gain = 0.5},
		--dug = {name = "", gain = 1.0},
		--place = {name = "", gain = 1.0},
         },
         
    node_box = {
			type = "fixed",
			fixed = {
				{-0.5, -0.5, -0.5, 0.5, 0.0, 0.5},
				{-0.5, 0.0, 0.0, 0.5, 0.5, 0.5},
			},
		},
    on_place = minetest.rotate_node,
})



---- ROAD BLOCK:
minetest.register_node("zombies4test:trafficblock", {
	description = "Traffic Block",
	drawtype = "mesh",
	mesh = "road_block.obj",
	--visual_size = {x=1, y=1},
	--inventory_image = "",
	tiles = {"road_block.png"},
	paramtype = "light",
	paramtype2 = "facedir",
	--on_place = minetest.rotate_node,
	sunlight_propagates = true,
	walkable = true, 
	floodable = false,
	groups = {cracky = 3, oddly_breakable_by_hand = 1},
	drop = "zombies4test:trafficblock",
	
	
	selection_box = {
		type = "fixed",
		--    esqueda,altura,tras..,direita ,negativo aumenta para baixo, positivo aumenta para cima
		fixed = {-0.5, -0.5, -0.3, 0.5, 0.3, 0.3},
	},
	
	node_box = {
		type = "fixed", 
		fixed = {-0.5, -0.5, -0.3, 0.5, 0.3, 0.3},
	},
	
	
})



