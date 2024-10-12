minetest.register_node("zombies4test:zlantern", {
    description = "Z Lantern",
    drawtype = "mesh",
    mesh = "lantern_normal.obj", 
    tiles = {"Lantern.png"}, 
    paramtype = "light",
    paramtype2 = "facedir",
    sunlight_propagates = true,
    light_source = 12, 
    groups = {cracky = 3},
    drop = "zombies4test:zlantern", 
    on_punch = function(pos, node, puncher)
        minetest.node_dig(pos, node, puncher)
    end,
    
     selection_box = {
        type = "fixed",
        fixed = {-0.3, -0.5, -0.3, 0.3, 0.25, 0.3}, 
    },
    collision_box = {
        type = "fixed",
        fixed = {-0.3, -0.5, -0.3, 0.3, 0.25, 0.3}, 
    },
})





---- trashcan :
minetest.register_node("zombies4test:trashcan", {
	description = "Trashcan",
	drawtype = "mesh",
	mesh = "trashcan.obj",
	--visual_size = {x=1, y=1},
	--inventory_image = "",
	--wield_image = "trashcan.png",
	tiles = {"trashcan.png"},
	paramtype = "light",
	paramtype2 = "facedir",
	--on_place = minetest.rotate_node,
	sunlight_propagates = true,
	walkable = true, 
	floodable = false,
	groups = {cracky = 3, oddly_breakable_by_hand = 1},
	drop = "zombies4test:trashcan",
	--sounds = default.node_sound_metal_defaults(),
	
	selection_box = {
		type = "fixed",
		--    esqueda,altura,tras..,direita ,negativo aumenta para baixo, positivo aumenta para cima
		fixed = {-0.4, -0.5, -0.4, 0.4, 0.5, 0.4},
	},
	
	node_box = {
		type = "fixed", 
		fixed = {-0.4, -0.5, -0.4, 0.4, 0.5, 0.4},
	},
	
	
})






---- VENDING MACHINE : <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
minetest.register_node("zombies4test:vendingmachine", {
	description = "Vending machine",
	drawtype = "mesh",
	mesh = "vending_machine.obj",
	--visual_size = {x=1, y=1},
	--inventory_image = "",
	--wield_image = "monitor.png",
	tiles = {"vending_machine.png"},
	paramtype = "light",
	paramtype2 = "facedir",
	-- light_source = 8,
	--on_place = minetest.rotate_node,
	sunlight_propagates = true,
	use_texture_alpha = "blend",
	walkable = true, 
	floodable = false,
	groups = {cracky = 3, oddly_breakable_by_hand = 1},
	drop = "zombies4test:vendingmachine",
	--sounds = default.node_sound_metal_defaults(),
	
	selection_box = {
		type = "fixed",

		fixed = {-0.5, -0.5, -0.5, 0.5, 1.4, 0.5},
	},
	
	node_box = {
		type = "fixed", 
		fixed = {-0.5, -0.5, -0.5, 0.5, 1.4, 0.5},
	},
	
	
	on_construct = function(pos)
    	-- local pos = pos.x .. "," .. pos.y .. "," .. pos.z
        local meta = minetest.get_meta(pos)
        meta:set_string("infotext", "\t\t\t\t\tVending Machine,\nInsert one zcoin to buy Soda !")   
        end,
    
	 on_rightclick = function(pos, node, clicker, itemstack, pointed_thing)
	 
	local inv = clicker:get_inventory()
	local item_name = itemstack:get_name()
	
	
		if item_name == "zombies4test:zcoin" then
		
		-- Sound : https://freesound.org/people/Kyodon/sounds/153422/
		minetest.sound_play("v_machine", {pos = pos,gain = 1.0,max_hear_distance = 3,})

		inv:add_item("main", "zombies4test:soda 1")
		itemstack:take_item()
	    
		
		else
		minetest.chat_send_player(clicker:get_player_name()," Insert one zcoin to buy Soda !")

		end
		
		
		
        
      end,
	
	
})


---- RADIO :

minetest.register_node("zombies4test:radio", {
	description = "Radio",
	drawtype = "mesh",
	mesh = "radio.obj",
	--visual_size = {x=1, y=1},
	--inventory_image = "",
	tiles = {"radio.png"},
	paramtype = "light",
	paramtype2 = "facedir",
	--on_place = minetest.rotate_node,
	sunlight_propagates = true,
	walkable = true, 
	floodable = false,
	groups = {cracky = 3, oddly_breakable_by_hand = 1},
	drop = "zombies4test:radio",
	--sounds = default.node_sound_metal_defaults(),
	
	selection_box = {
		type = "fixed",

		fixed = {-0.3, -0.5, -0.3, 0.3, 0.2, 0.3},
	},
	
	node_box = {
		type = "fixed", 
		fixed = {-0.3, -0.5, -0.3, 0.3, 0.2, 0.3},
	},

	 on_rightclick = function(pos, node, clicker, itemstack, pointed_thing)
        -- Play a sound to the player at the node position
        minetest.sound_play("radioo", {
            pos = pos,
            gain = 1.0,
            max_hear_distance = 10,
        })
    end,
	
	
})



---- TABLEs : ===================================================
minetest.register_node("zombies4test:table", {
	description = "Table",
	drawtype = "mesh",
	mesh = "table.obj",
	--visual_size = {x=1, y=1},
	--inventory_image = "",
	tiles = {"table.png"},
	paramtype = "light",
	paramtype2 = "facedir",
	--on_place = minetest.rotate_node,
	sunlight_propagates = true,
	walkable = true, 
	floodable = false,
	groups = {cracky = 3, oddly_breakable_by_hand = 1},
	drop = "zombies4test:table",
	--sounds = default.node_sound_wood_defaults(),
	
	selection_box = {
		type = "fixed",
		--    esqueda,altura,tras..,direita ,negativo aumenta para baixo, positivo aumenta para cima
		fixed = {-0.4, -0.5, -0.4, 0.4, 0.5, 0.4},
	},
	
	node_box = {
		type = "fixed", 
		fixed = {-0.4, -0.5, -0.4, 0.4, 0.5, 0.4},
	},
	
	
})


minetest.register_node("zombies4test:office_desk", {
	description = "Office Desk",
	drawtype = "mesh",
	mesh = "office_desk.obj",
	tiles = {"office_desk.png"},
	paramtype = "light",
	paramtype2 = "facedir",
	sunlight_propagates = true,
	walkable = true, 
	floodable = false,
	groups = {cracky = 3, oddly_breakable_by_hand = 1},
	drop = "zombies4test:table",
	
	selection_box = {
		type = "fixed",
		--    esqueda,altura,tras..,direita ,negativo aumenta para baixo, positivo aumenta para cima
		fixed = {-1.0, -0.5, -0.5, 0.9, 0.5, 0.5},
	},
	
	node_box = {
		type = "fixed", 
		fixed = {-0.4, -0.5, -0.4, 0.4, 0.5, 0.4},
	},
	
	
})


---- COMPUTER :
minetest.register_node("zombies4test:computer", {
	description = "Computer",
	drawtype = "mesh",
	mesh = "computer.obj",
	--visual_size = {x=1, y=1},
	--inventory_image = "",
	tiles = {"computerr.png"},
	paramtype = "light",
	paramtype2 = "facedir",
	--on_place = minetest.rotate_node,
	sunlight_propagates = true,
	walkable = true, 
	floodable = false,
	groups = {cracky = 3, oddly_breakable_by_hand = 1},
	drop = "zombies4test:computer",
	--sounds = default.node_sound_metal_defaults(),
	
	selection_box = {
		type = "fixed",
		--    esqueda,altura,tras..,direita ,negativo aumenta para baixo, positivo aumenta para cima
		fixed = {-0.4, -0.5, -0.001, 0.4, 0.1, 0.15},
	},
	
	node_box = {
		type = "fixed", 
		fixed = {-0.4, -0.5, -0.4, 0.4, 0.5, 0.4},
	},
	
	 on_rightclick = function(pos, node, player, itemstack, pointed_thing)
        local formspec = "size[8,8;]image[-0.9,-0.35;12,11;pc.png]"
        minetest.show_formspec(player:get_player_name(), "mymod:img_formspec", formspec) -- falta a imagem
    end
	
})



---- ARMCHAIR :
minetest.register_node("zombies4test:armchair", {
	description = "Armchair",
	drawtype = "mesh",
	mesh = "armchair.obj",
	--visual_size = {x=1, y=1},
	--inventory_image = "",
	tiles = {"armchair.png"},
	paramtype = "light",
	paramtype2 = "facedir",
	--on_place = minetest.rotate_node,
	sunlight_propagates = true,
	walkable = true, 
	floodable = false,
	groups = {cracky = 3, oddly_breakable_by_hand = 1},
	drop = "zombies4test:armchair",
	--sounds = default.node_sound_wood_defaults(),
	
	selection_box = {
		type = "fixed",
		--    esqueda,altura,tras..,direita ,negativo aumenta para baixo, positivo aumenta para cima
		fixed = {-0.4, -0.5, -0.4, 0.4, -0.1, 0.4},
	},
	
	node_box = {
		type = "fixed", 
		fixed = {-0.4, -0.5, -0.4, 0.4, -0.1, 0.4},
	},


	on_rightclick = function(pos, node, clicker, itemstack, pointed_thing)
        local player = clicker:get_player_name() 
        local player_pos = minetest.get_player_by_name(player):get_pos() 
        minetest.get_player_by_name(player):set_pos(pos) 

        -- Animação
        --minetest.get_player_by_name(player):set_animation({x = 81,  y = 160}, 30, 0)
        minetest.after(0.2, function()
        minetest.get_player_by_name(player):set_animation({x = 81,  y = 160}, 30, 0)
        end)
   		end,


	
})





---- hospital_gurney :
minetest.register_node("zombies4test:hospital_gurney", {
	description = "Hospital Gurney",
	drawtype = "mesh",
	mesh = "maca_hospital.obj",
	--visual_size = {x=1, y=1},
	--inventory_image = "",
	tiles = {"hospital_gurney.png"},
	paramtype = "light",
	paramtype2 = "facedir",
	--on_place = minetest.rotate_node,
	sunlight_propagates = true,
	walkable = true, 
	floodable = false,
	groups = {cracky = 3, oddly_breakable_by_hand = 1},
	drop = "zombies4test:hospital_gurney",
	--sounds = default.node_sound_wood_defaults(),
	
	selection_box = {
		type = "fixed",
		--    esqueda,altura,tras..,direita ,negativo aumenta para baixo, positivo aumenta para cima
		fixed = {-0.4, -0.5, -0.4, 0.4, 0.3, 1.0},
	},
	
	node_box = {
		type = "fixed", 
		fixed = {-0.4, -0.5, -0.4, 0.4, 0.3, 1.0},
	},



	on_rightclick = function(pos, node, clicker, itemstack, pointed_thing)
        local player = clicker:get_player_name() 
        local player_pos = minetest.get_player_by_name(player):get_pos() 
        minetest.get_player_by_name(player):set_pos({x=pos.x,y=pos.y+3,z=pos.z}) 

        -- Animação
        --minetest.get_player_by_name(player):set_animation({x = 162,  y = 166}, 30, 0)
        minetest.after(0.2, function()
           minetest.get_player_by_name(player):set_animation({x = 162,  y = 166}, 30, 0)
           end)
   	end,
		

	
})



---- bedside_cabinet :
minetest.register_node("zombies4test:bedside_cabinet", {
	description = "Bedside Cabinet",
	drawtype = "mesh",
	mesh = "bedside_cabinet.obj",
	--visual_size = {x=1, y=1},
	--inventory_image = "",
	tiles = {"bedside_cabinet.png"},
	paramtype = "light",
	paramtype2 = "facedir",
	--on_place = minetest.rotate_node,
	sunlight_propagates = true,
	use_texture_alpha = "blend",
	walkable = true, 
	floodable = false,
	groups = {cracky = 3, oddly_breakable_by_hand = 1},
	drop = "zombies4test:bedside_cabinet",
	--sounds = default.node_sound_wood_defaults(),
	
	selection_box = {
		type = "fixed",
		--    esqueda,altura,tras..,direita ,negativo aumenta para baixo, positivo aumenta para cima
		fixed = {-0.4, -0.5, -0.4, 0.4, 0.5, 0.4},
	},
	
	node_box = {
		type = "fixed", 
		fixed = {-0.4, -0.5, -0.4, 0.4, 0.5, 0.4},
	},


	
})




---- SHELVING :
minetest.register_node("zombies4test:shelving", {
	description = "Shelving",
	drawtype = "mesh",
	mesh = "shelving.obj",
	--visual_size = {x=1, y=1},
	--inventory_image = "",
	tiles = {"shalving.png"},
	paramtype = "light",
	paramtype2 = "facedir",
	--on_place = minetest.rotate_node,
	sunlight_propagates = true,
	walkable = true, 
	floodable = false,
	groups = {cracky = 3, oddly_breakable_by_hand = 1},
	drop = "zombies4test:shelving",
	--sounds = default.node_sound_metal_defaults(),
	
	selection_box = {
		type = "fixed",
		--    esqueda,altura,tras..,direita ,negativo aumenta para baixo, positivo aumenta para cima
		fixed = {-0.5, -0.5, -0.5, 0.5, 1.2, 0.5},
	},
	
	node_box = {
		type = "fixed", 
		fixed = {-0.5, -0.5, -0.5, 0.5, 1.2, 0.5},
	},
	
	
})



---- WORKBENCH :
minetest.register_node("zombies4test:workbench", {
	description = "Workbench",
	drawtype = "mesh",
	mesh = "Workbench.obj",
	--visual_size = {x=1, y=1},
	--inventory_image = "",
	tiles = {"Workbench.png"},
	paramtype = "light",
	paramtype2 = "facedir",
	--on_place = minetest.rotate_node,
	sunlight_propagates = true,
	walkable = true, 
	floodable = false,
	groups = {cracky = 3, oddly_breakable_by_hand = 1},
	drop = "zombies4test:workbench",
	--sounds = default.node_sound_metal_defaults(),
	
	selection_box = {
		type = "fixed",
		--    esqueda,altura,tras..,direita ,negativo aumenta para baixo, positivo aumenta para cima
		fixed = {-1.4, -0.5, -0.4, 0.5, 0.5, 0.5},
	},
	
	node_box = {
		type = "fixed", 
		fixed = {-1.4, -0.5, -0.4, 0.5, 0.5, 0.5},
	},
	
	
})




---- BEDS :
minetest.register_node("zombies4test:dirtybeds", {
	description = "Dirty beds",
	drawtype = "mesh",
	mesh = "bedx.obj",
	--visual_size = {x=1, y=1},
	--inventory_image = "",
	tiles = {"bedx.png"},
	paramtype = "light",
	paramtype2 = "facedir",
	--on_place = minetest.rotate_node,
	sunlight_propagates = true,
	walkable = true, 
	floodable = false,
	groups = {cracky = 3, oddly_breakable_by_hand = 1},
	--drop = " ",
	--sounds = default.node_sound_wood_defaults(),
	
	selection_box = {
		type = "fixed",
		--    esqueda,altura,tras..,direita ,negativo aumenta para baixo, positivo aumenta para cima
		fixed = {-0.5, -0.5, -0.5, 0.5, -0.01, 1.5},
	},
	
	node_box = {
		type = "fixed", 
		fixed = {-0.5, -0.5, -0.5, 0.5, -0.01, 1.5},
	},

    on_rightclick = function(pos, node, player, itemstack, pointed_thing)
       
    	 minetest.chat_send_player(player:get_player_name(), "That bed is contaminated, you can't sleep in it!")
       
    end,
    
	
})



---- VASES :
minetest.register_node("zombies4test:vases", {
	description = "Vases",
	drawtype = "mesh",
	mesh = "vases.obj",
	--visual_size = {x=1, y=1},
	--inventory_image = "",
	tiles = {"vases.png"},
	paramtype = "light",
	paramtype2 = "facedir",
	--on_place = minetest.rotate_node,
	sunlight_propagates = true,
	use_texture_alpha = "blend",
	walkable = true, 
	floodable = false,
	groups = {cracky = 3, oddly_breakable_by_hand = 1},
	--drop = " ",
	--sounds = default.node_sound_wood_defaults(),
	
	selection_box = {
		type = "fixed",
		--    esqueda,altura,tras..,direita ,negativo aumenta para baixo, positivo aumenta para cima
		fixed = {-0.5, -0.5, -0.5, 0.5, 0.5, 0.5},
	},
	
	node_box = {
		type = "fixed", 
		fixed = {-0.5, -0.5, -0.5, 0.5, 0.5, 0.5},
	},

  
	
})


-- Ladder 

minetest.register_node("zombies4test:ladder_fake", {
	description = "Ladder",
	drawtype = "signlike",
	tiles = {"ladder_fake.png"},
	inventory_image = "ladder_fake.png",
	wield_image = "ladder_fake.png",
	paramtype = "light",
	paramtype2 = "wallmounted",
	sunlight_propagates = true,
	walkable = false,
	climbable = true,
	is_ground_content = false,
	selection_box = {
		type = "wallmounted",
		
	},
	groups = {cracky = 2},
	
	 sounds = {        
		footstep = {name = "zladders", gain = 0.5},
		--dig = {name = "", gain = 0.5},
		--dug = {name = "", gain = 1.0},
		--place = {name = "", gain = 1.0},
         },
	
})


---- DOORS : 

minetest.register_node("zombies4test:fake_door", {
	description = "Fake Door",
	drawtype = "mesh",
	mesh = "fake_door.obj",
	--visual_size = {x=1, y=1},
	--inventory_image = "",
	--wield_image = "stop_sign.png",
	tiles = {"fake_door.png"},
	paramtype = "light",
	paramtype2 = "facedir",
	--on_place = minetest.rotate_node,
	sunlight_propagates = true,
	walkable = true, 
	floodable = false,
	groups = {choppy = 2, oddly_breakable_by_hand = 1},
	drop = "zombies4test:fake_door",
	--sounds 
	    
	selection_box = {
		type = "fixed",
		fixed = {-0.5, -0.5, -0.5, 0.5, 1.5, -0.4},
	},
	
	node_box = {
		type = "fixed", 
		fixed = {-0.5, -0.5, -0.5, 0.5, 0.5, -0.4},
	},
	
	
	on_rightclick = function(pos, node)
			minetest.sound_play({name="door_open_duck",gain = 1.0,max_hear_distance = 2 })
			minetest.set_node(pos,{name = "zombies4test:fake_door_open",param2=node.param2})
			return 
	end
	
	
})



minetest.register_node("zombies4test:fake_door_open", {
	description = "Fake Door Open",
	drawtype = "mesh",
	mesh = "fake_door_b.obj",
	--visual_size = {x=1, y=1},
	--inventory_image = "",
	--wield_image = "stop_sign.png",
	tiles = {"fake_door.png"},
	paramtype = "light",
	paramtype2 = "facedir",
	--on_place = minetest.rotate_node,
	sunlight_propagates = true,
	walkable = true, 
	floodable = false,
	groups = {choppy = 2, oddly_breakable_by_hand = 1,not_in_creative_inventory=1},
	drop = "zombies4test:fake_door",
	--sounds = default.node_sound_metal_defaults(),
	
	selection_box = {
		type = "fixed",
		fixed = {-0.5, -0.5, -0.5, -0.4, 1.5, 0.5},-- -0.4
	},
	
	node_box = {
		type = "fixed", 
		fixed = {-0.5, -0.5, -0.5, -0.4, 0.5, 0.5},
	},
	
	on_rightclick = function(pos, node)
			minetest.sound_play({name="door_closed_duck",gain = 1.0,max_hear_distance = 2 })
			minetest.set_node(pos,{name = "zombies4test:fake_door",param2=node.param2})
			return 
	end
	
	
})


---- DOORS GLASS FAKE: 

minetest.register_node("zombies4test:fake_glass_door", {
	description = "Fake Glass Door",
	drawtype = "mesh",
	mesh = "fake_door.obj",
	--visual_size = {x=1, y=1},
	--inventory_image = "",
	--wield_image = "stop_sign.png",
	tiles = {"fake_glass_door.png"},
	use_texture_alpha = "blend",
	paramtype = "light",
	paramtype2 = "facedir",
	--on_place = minetest.rotate_node,
	sunlight_propagates = true,
	walkable = true, 
	floodable = false,
	groups = {choppy = 2, oddly_breakable_by_hand = 1},
	drop = "zombies4test:fake_door",
	--sounds 
	    
	selection_box = {
		type = "fixed",
		fixed = {-0.5, -0.5, -0.5, 0.5, 1.5, -0.4},
	},
	
	node_box = {
		type = "fixed", 
		fixed = {-0.5, -0.5, -0.5, 0.5, 0.5, -0.4},
	},
	
	
	on_rightclick = function(pos, node)
			--minetest.sound_play({name="door_open_duck",gain = 1.0,max_hear_distance = 2 })
			minetest.set_node(pos,{name = "zombies4test:fake_glass_door_open",param2=node.param2})
			return 
	end
	
	
})



minetest.register_node("zombies4test:fake_glass_door_open", {
	description = "Fake Glass Door Open",
	drawtype = "mesh",
	mesh = "fake_door_b.obj",
	--visual_size = {x=1, y=1},
	--inventory_image = "",
	--wield_image = "stop_sign.png",
	tiles = {"fake_glass_door.png"},
	use_texture_alpha = "blend",
	paramtype = "light",
	paramtype2 = "facedir",
	--on_place = minetest.rotate_node,
	sunlight_propagates = true,
	walkable = true, 
	floodable = false,
	groups = {choppy = 2, oddly_breakable_by_hand = 1,not_in_creative_inventory=1},
	drop = "zombies4test:fake_door",
	--sounds = default.node_sound_metal_defaults(),
	
	selection_box = {
		type = "fixed",
		fixed = {-0.5, -0.5, -0.5, -0.4, 1.5, 0.5},-- -0.4
	},
	
	node_box = {
		type = "fixed", 
		fixed = {-0.5, -0.5, -0.5, -0.4, 0.5, 0.5},
	},
	
	on_rightclick = function(pos, node)
			--minetest.sound_play({name="door_closed_duck",gain = 1.0,max_hear_distance = 2 })
			minetest.set_node(pos,{name = "zombies4test:fake_glass_door",param2=node.param2})
			return 
	end
	
	
})





