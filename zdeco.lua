local S = core.get_translator("zombies4test")

local function zsimples_deconodes(node_name,node_desc,node_texture)
core.register_node(node_name, {
	description = S(node_desc),
	drawtype = "mesh",
	mesh = "normal_nodes.obj",
	tiles = {node_texture},
	paramtype = "light",
	paramtype2 = "facedir",
	sunlight_propagates = true,
	use_texture_alpha = "blend",
	walkable = true, 
	floodable = false,
	groups = {dig_immediate=3},
	drop = node_name,
	
	selection_box = {
		type = "fixed",
		fixed = {-0.5, -0.5, -0.5, 0.5, 0.5, 0.5},
	},
	
	node_box = {
		type = "fixed", 
		fixed = {-0.5, -0.5, -0.5, 0.5, 0.5, 0.5},
	},	
})
end

zsimples_deconodes("zombies4test:zwooden_cabinet","Wooden Cabinet","Wooden_Cabinet.png")
zsimples_deconodes("zombies4test:zboockshelf","Boockshelf","boockshelf.png")

core.register_node("zombies4test:zlantern", {
    description = S("Z Lantern"),
    drawtype = "mesh",
    mesh = "lantern_normal.obj", 
    tiles = {"Lantern.png"}, 
    paramtype = "light",
    paramtype2 = "facedir",
    sunlight_propagates = true,
    light_source = 12, 
    groups = {dig_immediate=3},
    _mcl_hardness = 0.5,
    drop = "zombies4test:zlantern", 
    on_punch = function(pos, node, puncher)
        core.node_dig(pos, node, puncher)
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
--- Sound : https://freesound.org/people/XanTheRock/sounds/720087/
core.register_node("zombies4test:trashcan", {
	description = S("Trashcan"),
	drawtype = "mesh",
	mesh = "trashcan.obj",
	tiles = {"trashcan.png"},
	paramtype = "light",
	paramtype2 = "facedir",
	sunlight_propagates = true,
	walkable = true, 
	floodable = false,
	groups = {handy=1,oddly_breakable_by_hand = 3},
	_mcl_hardness = 2.5,
	drop = "zombies4test:trashcan",
	
	selection_box = {
		type = "fixed",
		fixed = {-0.4, -0.5, -0.4, 0.4, 0.5, 0.4},
	},
	
	node_box = {
		type = "fixed", 
		fixed = {-0.4, -0.5, -0.4, 0.4, 0.5, 0.4},
	},
	
	on_rightclick = function(pos, node, clicker, itemstack) -- 0033
	local player_name = clicker:get_player_name()
	local inv_name = "trashs_" .. player_name
	core.sound_play("trash_can_open", {pos = pos, max_hear_distance = 10}, true)
	local inv = core.create_detached_inventory(inv_name,{
	on_put = function(inv, listname, index, stack, player) 
	  inv:set_stack("trashs", 1, ItemStack(""))	    
	  return 0 
	end,
	})
	
	inv:set_size("trashs",1)
	
	 local name_form = {
        "size[8,9.1]", 
        "listcolors[#000000BB;#000000BB]"..  
        "list[detached:" .. inv_name .. ";trashs;3.5,2;3,1;]",
        "list[current_player;main;0,5.2;8,1;]",
        "list[current_player;main;0,6.35;8,3;8]",
        "list[current_player;input;3.5,1;1,1;]",
        "listring[current_player;main]",
        "listring[current_player;input]"
       }
        
       core.show_formspec(player_name, "zombies4test:" .. tostring(name_form), table.concat(name_form, ""))           
       end,   	
})

---- VENDING MACHINE : <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
core.register_node("zombies4test:vendingmachine", {
	description = S("Vending machine"),
	drawtype = "mesh",
	mesh = "vending_machine.obj",
	tiles = {"vending_machine.png"},
	paramtype = "light",
	paramtype2 = "facedir",
	sunlight_propagates = true,
	use_texture_alpha = "blend",
	walkable = true, 
	floodable = false,
	groups = {dig_immediate=3},
	_mcl_hardness = 2,
	drop = "zombies4test:vendingmachine",
	
	selection_box = {
		type = "fixed",

		fixed = {-0.5, -0.5, -0.5, 0.5, 1.4, 0.5},
	},
	
	node_box = {
		type = "fixed", 
		fixed = {-0.5, -0.5, -0.5, 0.5, 1.4, 0.5},
	},
		
	on_construct = function(pos)
        local meta = core.get_meta(pos)
        meta:set_string("infotext", "\t\t\t\t\tVending Machine,\nInsert one zcoin to buy Soda !")   
        end,
    
	on_rightclick = function(pos, node, clicker, itemstack, pointed_thing)	 
	 local inv = clicker:get_inventory()
	 local item_name = itemstack:get_name()
		
		if item_name == "zombies4test:zcoin" then		
		-- Sound : https://freesound.org/people/Kyodon/sounds/153422/
		core.sound_play("v_machine", {pos = pos, max_hear_distance = 3}, true)

		inv:add_item("main", "zombies4test:soda 1")
		itemstack:take_item()
	    		
		else
		core.chat_send_player(clicker:get_player_name()," Insert one zcoin to buy Soda !")
		end      
      end,	
})

---- RADIO :
core.register_node("zombies4test:radio", {
	description = S("Radio"),
	drawtype = "mesh",
	mesh = "radio.obj",
	tiles = {"radio.png"},
	paramtype = "light",
	paramtype2 = "facedir",
	sunlight_propagates = true,
	walkable = true, 
	floodable = false,
	groups = {dig_immediate=3},
	_mcl_hardness = 2,
	drop = "zombies4test:radio",
	
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
        core.sound_play("radioo", {pos = pos, max_hear_distance = 10}, true)
    end,
	
	
})

---- TABLEs : ===================================================
core.register_node("zombies4test:table", {
	description = S("Table"),
	drawtype = "mesh",
	mesh = "table.obj",
	tiles = {"table.png"},
	paramtype = "light",
	paramtype2 = "facedir",
	sunlight_propagates = true,
	walkable = true, 
	floodable = false,
	groups = {choppy = 3, axey = 1,handy=1,oddly_breakable_by_hand = 3},
	_mcl_hardness = 2.5,
	drop = "zombies4test:table",
	--sounds = default.node_sound_wood_defaults(),
	
	selection_box = {
		type = "fixed",
		fixed = {-0.4, -0.5, -0.4, 0.4, 0.5, 0.4},
	},
	
	node_box = {
		type = "fixed", 
		fixed = {-0.4, -0.5, -0.4, 0.4, 0.5, 0.4},
	},	
})

core.register_node("zombies4test:office_desk", {
	description = S("Office Desk"),
	drawtype = "mesh",
	mesh = "office_desk.obj",
	tiles = {"office_desk.png"},
	paramtype = "light",
	paramtype2 = "facedir",
	sunlight_propagates = true,
	walkable = true, 
	floodable = false,
	groups = {choppy = 3, axey = 1,handy=1,oddly_breakable_by_hand = 3},
	_mcl_hardness = 2.5,
	drop = "zombies4test:table",
	
	selection_box = {
		type = "fixed",
		fixed = {-1.0, -0.5, -0.5, 0.9, 0.5, 0.5},
	},
	
	node_box = {
		type = "fixed", 
		fixed = {-0.4, -0.5, -0.4, 0.4, 0.5, 0.4},
	},	
})

---- COMPUTER :
core.register_node("zombies4test:computer", {
	description = S("Computer"),
	drawtype = "mesh",
	mesh = "computer.obj",
	tiles = {"computerr.png"},
	paramtype = "light",
	paramtype2 = "facedir",
	sunlight_propagates = true,
	walkable = true, 
	floodable = false,
	groups = {dig_immediate=3},
	_mcl_hardness = 2,
	drop = "zombies4test:computer",
	--sounds = default.node_sound_metal_defaults(),
	
	selection_box = {
		type = "fixed",
		fixed = {-0.4, -0.5, -0.001, 0.4, 0.1, 0.15},
	},
	
	node_box = {
		type = "fixed", 
		fixed = {-0.4, -0.5, -0.4, 0.4, 0.5, 0.4},
	},
	
	on_rightclick = function(pos, node, player, itemstack, pointed_thing)
         local formspec = "size[8,8;]image[-0.9,-0.35;12,11;pc.png]"
          core.show_formspec(player:get_player_name(), "zombies4test:img_formspec",formspec)
        end	
})

---- ARMCHAIR/CHAIR:
core.register_node("zombies4test:armchair", {
	description = S("Armchair"),
	drawtype = "mesh",
	mesh = "armchair.obj",
	tiles = {"armchair.png"},
	paramtype = "light",
	paramtype2 = "facedir",
	sunlight_propagates = true,
	walkable = true, 
	floodable = false,
	groups = {choppy = 3, axey = 1,handy=1,oddly_breakable_by_hand = 3},
	_mcl_hardness = 2.5,
	drop = "zombies4test:armchair",
	
	selection_box = {
		type = "fixed",
		fixed = {-0.4, -0.5, -0.4, 0.4, -0.1, 0.4},
	},
	
	node_box = {
		type = "fixed", 
		fixed = {-0.4, -0.5, -0.4, 0.4, -0.1, 0.4},
	},


	on_rightclick = function(pos, node, clicker, itemstack, pointed_thing)
        local player = clicker:get_player_name() 
        local player_pos = core.get_player_by_name(player):get_pos() 
        core.get_player_by_name(player):set_pos(pos) 

        -- Animação
        core.after(0.2, function()
        core.get_player_by_name(player):set_animation({x = 81,  y = 160}, 30, 0)
        end)
   		end,	
})

core.register_node("zombies4test:chair", {
	description = S("Chair"),
	drawtype = "mesh",
	mesh = "chair.obj",
	tiles = {"chair.png"},
	paramtype = "light",
	paramtype2 = "facedir",
	use_texture_alpha = "blend",
	sunlight_propagates = true,
	walkable = true, 
	floodable = false,
	groups = {choppy = 3, axey = 1,handy=1,oddly_breakable_by_hand = 3},
	_mcl_hardness = 2.5,
	drop = "zombies4test:chair",
	
	selection_box = {
		type = "fixed",
		fixed = {-0.4, -0.5, -0.4, 0.4, -0.1, 0.4},
	},
	
	node_box = {
		type = "fixed", 
		fixed = {-0.4, -0.5, -0.4, 0.4, -0.1, 0.4},
	},

       on_rightclick = function(pos, node, clicker, itemstack, pointed_thing)
        local player = clicker:get_player_name() 
        local player_pos = core.get_player_by_name(player):get_pos() 
        core.get_player_by_name(player):set_pos(pos) 

        core.after(0.2, function()
         core.get_player_by_name(player):set_animation({x = 81,  y = 160}, 30, 0)
        end)
       end,	
})

---- hospital_gurney :
core.register_node("zombies4test:hospital_gurney", {
	description = S("Hospital Gurney"),
	drawtype = "mesh",
	mesh = "maca_hospital.obj",
	tiles = {"hospital_gurney.png"},
	paramtype = "light",
	paramtype2 = "facedir",
	sunlight_propagates = true,
	walkable = true, 
	floodable = false,
	groups = {oddly_breakable_by_hand=3},
	_mcl_hardness = 2,
	drop = "zombies4test:hospital_gurney",
	
	selection_box = {
		type = "fixed",
		fixed = {-0.4, -0.5, -0.4, 0.4, 0.3, 1.0},
	},
	
	node_box = {
		type = "fixed", 
		fixed = {-0.4, -0.5, -0.4, 0.4, 0.3, 1.0},
	},

	on_rightclick = function(pos, node, clicker, itemstack, pointed_thing)
        local player = clicker:get_player_name() 
        local player_pos = core.get_player_by_name(player):get_pos() 
        core.get_player_by_name(player):set_pos({x=pos.x,y=pos.y+3,z=pos.z}) 

        core.after(0.2, function()
           core.get_player_by_name(player):set_animation({x = 162,  y = 166}, 30, 0)
           end)
   	end,	
})

---- bedside_cabinet :
core.register_node("zombies4test:bedside_cabinet", {
	description = S("Bedside Cabinet"),
	drawtype = "mesh",
	mesh = "bedside_cabinet.obj",
	tiles = {"bedside_cabinet.png"},
	paramtype = "light",
	paramtype2 = "facedir",
	sunlight_propagates = true,
	use_texture_alpha = "blend",
	walkable = true, 
	floodable = false,
	groups = {choppy = 3, axey = 1,handy=1,oddly_breakable_by_hand = 3},
	_mcl_hardness = 2.5,
	drop = "zombies4test:bedside_cabinet",
	
	selection_box = {
		type = "fixed",
		fixed = {-0.4, -0.5, -0.4, 0.4, 0.5, 0.4},
	},
	
	node_box = {
		type = "fixed", 
		fixed = {-0.4, -0.5, -0.4, 0.4, 0.5, 0.4},
	},	
})

---- SHELVING :
core.register_node("zombies4test:shelving", {
	description = S("Shelving"),
	drawtype = "mesh",
	mesh = "shelving.obj",
	tiles = {"shalving.png"},
	paramtype = "light",
	paramtype2 = "facedir",
	sunlight_propagates = true,
	walkable = true, 
	floodable = false,
	groups = {handy=1,oddly_breakable_by_hand = 3},
	_mcl_hardness = 2.5,
	drop = "zombies4test:shelving",
	
	selection_box = {
		type = "fixed",
		fixed = {-0.5, -0.5, -0.5, 0.5, 1.2, 0.5},
	},
	
	node_box = {
		type = "fixed", 
		fixed = {-0.5, -0.5, -0.5, 0.5, 1.2, 0.5},
	},	
})

---- WORKBENCH :
core.register_node("zombies4test:workbench", {
	description = S("Workbench"),
	drawtype = "mesh",
	mesh = "Workbench.obj",
	tiles = {"Workbench.png"},
	paramtype = "light",
	paramtype2 = "facedir",
	sunlight_propagates = true,
	walkable = true, 
	floodable = false,
	groups = {choppy = 3, axey = 1,handy=1,oddly_breakable_by_hand = 3},
	_mcl_hardness = 2.5,
	drop = "zombies4test:workbench",
	
	selection_box = {
		type = "fixed",
		fixed = {-1.4, -0.5, -0.4, 0.5, 0.5, 0.5},
	},
	
	node_box = {
		type = "fixed", 
		fixed = {-1.4, -0.5, -0.4, 0.5, 0.5, 0.5},
	},	
})

---- BEDS :
core.register_node("zombies4test:dirtybeds", {
	description = S("Dirty beds"),
	drawtype = "mesh",
	mesh = "bedx.obj",
	tiles = {"bedx.png"},
	paramtype = "light",
	paramtype2 = "facedir",
	sunlight_propagates = true,
	walkable = true, 
	floodable = false,
	groups = {choppy = 3, axey = 1,handy=1,oddly_breakable_by_hand = 3},
	_mcl_hardness = 2.5,
	drop = "zombies4test:dirtybeds",
	selection_box = {
		type = "fixed",
		fixed = {-0.5, -0.5, -0.5, 0.5, -0.01, 1.5},
	},
	
	node_box = {
		type = "fixed", 
		fixed = {-0.5, -0.5, -0.5, 0.5, -0.01, 1.5},
	},

     on_rightclick = function(pos, node, player, itemstack, pointed_thing)       
       core.chat_send_player(player:get_player_name(), "That bed is contaminated, you can't sleep in it!")      
    end,	
})

---- VASES :
core.register_node("zombies4test:vases", {
	description = S("Vases"),
	drawtype = "mesh",
	mesh = "vases.obj",
	tiles = {"vases.png"},
	paramtype = "light",
	paramtype2 = "facedir",
	sunlight_propagates = true,
	use_texture_alpha = "blend",
	walkable = true, 
	floodable = false,
	groups = {dig_immediate=3},
	_mcl_hardness = 2,
	selection_box = {
		type = "fixed",
		fixed = {-0.5, -0.5, -0.5, 0.5, 0.5, 0.5},
	},
	
	node_box = {
		type = "fixed", 
		fixed = {-0.5, -0.5, -0.5, 0.5, 0.5, 0.5},
	},	
})

-- Ladder 
core.register_node("zombies4test:ladder_fake", {
	description = S("Ladder"),
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
	groups = {choppy = 3, axey = 1,handy=1,oddly_breakable_by_hand = 3},
	_mcl_hardness = 2.5,
	selection_box = {
		type = "wallmounted",
		
	},
	groups = {choppy = 2},
	
	 sounds = {        
		footstep = {name = "zladders", gain = 0.5,max_hear_distance = 2},
		dig = {name = "zladders", gain = 0.5,max_hear_distance = 2},
		dug = {name = "zladders", gain = 1.0,max_hear_distance = 2},
		place = {name = "zladders", gain = 1.0,max_hear_distance = 2},
         },	
})

---- DOORS : 
core.register_node("zombies4test:fake_door", {
	description = S("Fake Door"),
	drawtype = "mesh",
	mesh = "fake_door.obj",
	tiles = {"fake_door.png"},
	paramtype = "light",
	paramtype2 = "facedir",
	sunlight_propagates = true,
	walkable = true, 
	floodable = false,
	groups = {choppy = 3, axey = 1,handy=1,oddly_breakable_by_hand = 3},
	_mcl_hardness = 2.5,
	drop = "zombies4test:fake_door",
	    
	selection_box = {
		type = "fixed",
		fixed = {-0.5, -0.5, -0.5, 0.5, 1.5, -0.4},
	},
	
	node_box = {
		type = "fixed", 
		fixed = {-0.5, -0.5, -0.5, 0.5, 0.5, -0.4},
	},
	
	
	on_rightclick = function(pos, node)
	 core.sound_play("door_open_duck", {max_hear_distance = 2})
	 core.set_node(pos,{name = "zombies4test:fake_door_open",param2=node.param2})
	   return
	end	
})

core.register_node("zombies4test:fake_door_open", {
	--description = "Fake Door Open",
	drawtype = "mesh",
	mesh = "fake_door_b.obj",
	tiles = {"fake_door.png"},
	paramtype = "light",
	paramtype2 = "facedir",
	sunlight_propagates = true,
	walkable = true, 
	floodable = false,
	groups = {choppy = 3, axey = 1,handy=1,oddly_breakable_by_hand = 3},
	_mcl_hardness = 2.5,
	drop = "zombies4test:fake_door",
	--sounds = 	
	selection_box = {
		type = "fixed",
		fixed = {-0.5, -0.5, -0.5, -0.4, 1.5, 0.5},
	},
	
	node_box = {
		type = "fixed", 
		fixed = {-0.5, -0.5, -0.5, -0.4, 0.5, 0.5},
	},
	
	on_rightclick = function(pos, node)
	  core.sound_play({name="door_closed_duck", max_hear_distance = 2})
	  core.set_node(pos,{name = "zombies4test:fake_door",param2=node.param2})
	   return 
	end		
})

---- DOORS GLASS FAKE: 
core.register_node("zombies4test:fake_glass_door", {
	description = S("Fake Glass Door"),
	drawtype = "mesh",
	mesh = "fake_door.obj",
	tiles = {"fake_glass_door.png"},
	use_texture_alpha = "blend",
	paramtype = "light",
	paramtype2 = "facedir",
	sunlight_propagates = true,
	walkable = true, 
	floodable = false,
	groups = {choppy = 3, axey = 1,handy=1,oddly_breakable_by_hand = 3},
	_mcl_hardness = 2.5,
	drop = "zombies4test:fake_door",
	selection_box = {
		type = "fixed",
		fixed = {-0.5, -0.5, -0.5, 0.5, 1.5, -0.4},
	},
	
	node_box = {
		type = "fixed", 
		fixed = {-0.5, -0.5, -0.5, 0.5, 0.5, -0.4},
	},
		
	on_rightclick = function(pos, node)
	  core.set_node(pos,{name = "zombies4test:fake_glass_door_open",param2=node.param2})
	   return 
	end	
})

core.register_node("zombies4test:fake_glass_door_open", {
	--description = "Fake Glass Door Open",
	drawtype = "mesh",
	mesh = "fake_door_b.obj",
	tiles = {"fake_glass_door.png"},
	use_texture_alpha = "blend",
	paramtype = "light",
	paramtype2 = "facedir",
	sunlight_propagates = true,
	walkable = true, 
	floodable = false,
	groups = {choppy = 3, axey = 1,handy=1,oddly_breakable_by_hand = 3},
	_mcl_hardness = 2.5,
	drop = "zombies4test:fake_door",
	--sounds =	
	selection_box = {
		type = "fixed",
		fixed = {-0.5, -0.5, -0.5, -0.4, 1.5, 0.5},
	},
	
	node_box = {
		type = "fixed", 
		fixed = {-0.5, -0.5, -0.5, -0.4, 0.5, 0.5},
	},
	
	on_rightclick = function(pos, node)			
	   core.set_node(pos,{name = "zombies4test:fake_glass_door",param2=node.param2})
	    return 
	end	
})

---- SALA :
core.register_node("zombies4test:tv", {
	description = S("TV"),
	drawtype = "mesh",
	mesh = "tv.obj",
	tiles = {"tv.png"},
	paramtype = "light",
	paramtype2 = "facedir",
	sunlight_propagates = true,
	use_texture_alpha = "blend",
	walkable = true, 
	floodable = false,
	groups = {dig_immediate=3},
	_mcl_hardness = 2,
	selection_box = {
		type = "fixed",
		fixed = {-0.5, -0.5, -0.5, 0.5, 0.5, 0.5},
	},
	
	node_box = {
		type = "fixed", 
		fixed = {-0.5, -0.5, -0.5, 0.5, 0.5, 0.5},
	},
		
})

---- COZINHA :
core.register_node("zombies4test:stove", {
	description = S("Stove"),
	drawtype = "mesh",
	mesh = "stove.obj",
	tiles = {"stove.png"},
	paramtype = "light",
	paramtype2 = "facedir",
	sunlight_propagates = true,
	use_texture_alpha = "blend",
	walkable = true, 
	floodable = false,
	groups = {oddly_breakable_by_hand = 3},
	_mcl_hardness = 2,
	selection_box = {
		type = "fixed",
		fixed = {-0.5, -0.5, -0.5, 0.5, 0.5, 0.5},
	},
	
	node_box = {
		type = "fixed", 
		fixed = {-0.5, -0.5, -0.5, 0.5, 0.5, 0.5},
	},
		
})

core.register_node("zombies4test:fridge", {
	description = S("Fridge"),
	drawtype = "mesh",
	mesh = "fridge.obj",
	tiles = {"fridge.png"},
	paramtype = "light",
	paramtype2 = "facedir",
	sunlight_propagates = true,
	use_texture_alpha = "blend",
	walkable = true, 
	floodable = false,
	groups = {oddly_breakable_by_hand = 3},
	_mcl_hardness = 2,
	selection_box = {
		type = "fixed",
		fixed = {-0.5, -0.5, -0.5, 0.5, 1.5, 0.5},
	},
	
	node_box = {
		type = "fixed", 
		fixed = {-0.5, -0.5, -0.5, 0.5, 1.5, 0.5},
	},
	
	--on_rightclick = function(pos, node, clicker, itemstack, pointed_thing)	 	 
        --end,	
})

-- BANEHIRO:
core.register_node("zombies4test:toilet", {
	description = S("Toilet"),
	drawtype = "mesh",
	mesh = "toilet.obj",
	tiles = {"toilet.png"},
	paramtype = "light",
	paramtype2 = "facedir",
	sunlight_propagates = true,
	use_texture_alpha = "blend",
	walkable = true, 
	floodable = false,
	groups = {dig_immediate=3},
	_mcl_hardness = 2,
	selection_box = {
		type = "fixed",
		fixed = {-0.37, -0.5, -0.31, 0.37, 0.01, 0.5},
	},
	
	node_box = {
		type = "fixed", 
		fixed = {-0.37, -0.5, -0.31, 0.37, 0.01, 0.5},
	},
	
	on_rightclick = function(pos, node)
	 core.sound_play({name="flush_toilet", max_hear_distance = 3}, true)
	end	
})

-- STREETS:
core.register_node("zombies4test:road_block", {
	description = S("Road Block"),
	drawtype = "mesh",
	mesh = "road_block.obj",
	tiles = {"road_block.png"},
	inventory_image = "road_block_inv.png",
	paramtype = "light",
	paramtype2 = "facedir",
	sunlight_propagates = true,
	use_texture_alpha = "blend",
	walkable = true, 
	floodable = false,
	groups = {dig_immediate=3},
	_mcl_hardness = 2,
	selection_box = {
		type = "fixed",
		fixed = {-0.5, -0.5, -0.2, 0.5, 0.5, 0.1},
	},
	
	node_box = {
		type = "fixed", 
		fixed = {-0.5, -0.5, -0.2, 0.5, 0.5, 0.1},
	},	
})

core.register_node("zombies4test:traffic_cone", {
	description = S("Traffic Cone"),
	drawtype = "mesh",
	mesh = "traffic_cone.obj",
	tiles = {"traffic_cone.png"},
	inventory_image = "traffic_cone_icon.png",
	paramtype = "light",
	paramtype2 = "facedir",
	sunlight_propagates = true,
	use_texture_alpha = "blend",
	walkable = true, 
	floodable = false,
	groups = {dig_immediate=3},
	_mcl_hardness = 2,
	selection_box = {
		type = "fixed",
		fixed = {-0.2, -0.5, -0.2, 0.2, 0.5, 0.2},
	},
	
	node_box = {
		type = "fixed", 
		fixed = {-0.2, -0.5, -0.2, 0.2, 0.5, 0.2},
	},	
})

core.register_node("zombies4test:stop_sign", {
	description = S("Stop Sign"),
	drawtype = "mesh",
	mesh = "stopsign.obj",
	tiles = {"stop_sign.png"},
	inventory_image = "stopsign_icon.png",
	paramtype = "light",
	paramtype2 = "facedir",
	sunlight_propagates = true,
	use_texture_alpha = "blend",
	walkable = true, 
	floodable = false,
	groups = {dig_immediate=3},
	_mcl_hardness = 2,
	selection_box = {
		type = "fixed",
		fixed = {-0.1, -0.5, -0.1, 0.1, 1.5, 0.1},
	},
	
	node_box = {
		type = "fixed", 
		fixed = {-0.1, -0.5, -0.1, 0.1, 1.5, 0.1},
	},	
})

---- cash register :
core.register_node("zombies4test:cash_register_deco", {
	description = S("Cash Register"),
	drawtype = "mesh",
	mesh = "cash_register.obj",
	tiles = {"cash_register.png"},
	paramtype = "light",
	paramtype2 = "facedir",
	sunlight_propagates = true,
	use_texture_alpha = "blend",
	walkable = true, 
	floodable = false,
	groups = {dig_immediate=3},
	_mcl_hardness = 2,
	drop = "zombies4test:cash_register_deco",
	
	selection_box = {
		type = "fixed",
		fixed = {-0.5, -0.5, -0.5, 0.5, 0.15, 0.5},
	},
	
	node_box = {
		type = "fixed", 
		fixed = {-0.5, -0.5, -0.5, 0.5, 0.15, 0.5},
	},	
})

core.register_node("zombies4test:trash_bag", {
	description = S("Trash Bag"),
	drawtype = "mesh",
	mesh = "trash_bag.obj",
	tiles = {"trash_bag.png"},
	paramtype = "light",
	paramtype2 = "facedir",
	sunlight_propagates = true,
	use_texture_alpha = "blend",
	walkable = true, 
	floodable = false,
	groups = {snappy = 3},
	_mcl_hardness = 0.2,
	drop = "zombies4test:metal_can 5",
	
	selection_box = {
		type = "fixed",
		fixed = {-0.5, -0.5, -0.5, 0.5, 0.15, 0.5},
	},
	
	node_box = {
		type = "fixed", 
		fixed = {-0.5, -0.5, -0.5, 0.5, 0.15, 0.5},
	},	
})

core.register_node("zombies4test:papers", {
	description = S("Papers"), 
	drawtype = "mesh",
	mesh = "papers.obj",
	tiles = {"papers.png"},
	paramtype = "light",
	paramtype2 = "facedir",
	sunlight_propagates = true,
	use_texture_alpha = "blend",	
	walkable = false, 	
	groups ={dig_immediate=3},
	_mcl_hardness = 0.2,	
	selection_box = {
	type = "fixed",fixed = {-0.5, -0.5, -0.5, 0.5, -0.45, 0.5},
	},
	
	node_box = {
	type = "fixed",fixed = {-0.5, -0.5, -0.5, 0.5, -0.45, 0.5},
	},
})

core.register_node("zombies4test:toilet_paper", {
	description = S("Toilet Paper"), 
	drawtype = "mesh",
	mesh = "toilet_paper.obj",
	tiles = {"toilet_paper.png"},
	paramtype = "light",
	paramtype2 = "facedir",
	sunlight_propagates = true,
	use_texture_alpha = "blend",	
	walkable = false, 	
	groups ={dig_immediate=3},
	_mcl_hardness = 0.2,	
	selection_box = {
	type = "fixed",fixed = {-0.2, -0.5, -0.2, 0.2, 0.025, 0.2},
	},
	
	node_box = {
	type = "fixed",fixed =  {-0.2, -0.5, -0.2, 0.2, 0.025, 0.2},
	},
})

core.register_node("zombies4test:bedside", {
	description = S("Bedside Table"),
	drawtype = "mesh",
	mesh = "bedside.obj",
	tiles = {"bedside.png"},
	paramtype = "light",
	paramtype2 = "facedir",
	sunlight_propagates = true,
	walkable = true, 
	floodable = false,
	groups = {choppy = 3, axey = 1,handy=1,oddly_breakable_by_hand = 3},
	_mcl_hardness = 2.5,
	drop = "zombies4test:bedside",
	
	sounds = {        
        footstep = {name = "wood_steep", gain = 0.5,max_hear_distance = 10},
        -- dig = {name = "", gain = 0.5},
        -- dug = {name = "", gain = 1.0},
        -- place = {name = "", gain = 1.0},
         },
		
	selection_box = {
		type = "fixed",
		fixed = {-0.4, -0.5, -0.4, 0.4, 0.5, 0.4},
	},
	
	node_box = {
		type = "fixed", 
		fixed = {-0.4, -0.5, -0.4, 0.4, 0.5, 0.4},
	},
		
	on_construct = function(pos)              
	      local meta = core.get_meta(pos)
	       meta:set_string("formspec", "size[8,8.5]" ..          
              "listcolors[#000000BB;#000000BB]"..
              "list[current_name;main;0,0;8,4;]" ..  
              "list[current_player;main;0,4.5;8,4;]" ..  
              "listring[current_name;main]" ..
              "listring[current_player;main]"
       		 )
	      local inv = meta:get_inventory()
	      inv:set_size("main", 8*4)
	end,
	  
	on_dig = function(pos, node, digger)
		local meta = core.get_meta(pos)
		local inv = meta:get_inventory()
		if not inv:is_empty("main") then
		    return
		end
		core.node_dig(pos, node, digger)
       end,
	 
       on_rightclick = function(pos, node, clicker, itemstack, pointed_thing)
         core.sound_play("bedsitetable", {pos = pos, max_hear_distance = 10})
       end		
})

