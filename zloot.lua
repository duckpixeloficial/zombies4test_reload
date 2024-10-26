local S = minetest.get_translator("zombies4test")

---- Cardboard box: ==========================================================
core.register_node("zombies4test:cardboardbox", {
    description = S("Cardboard Box"),
    drawtype = "nodebox",
    tiles = {
        "cardboardbox_top.png", 
        "cardboardbox_side.png",
        "cardboardbox_side.png",
        "cardboardbox_side.png",
        "cardboardbox_front.png",
        "cardboardbox_front.png",
    },
    paramtype = "light",
    paramtype2 = "facedir",
    sunlight_propagates = true,
    walkable = true, 
    floodable = false,
    groups = {oddly_breakable_by_hand = 1},

    drop = {
        max_items = 1,
        items = {
            {items = {'zombies4test:canned_beans 2'}, rarity = 2},
            {items = {'zombies4test:canned_tomato 2'}, rarity = 1},
            {items = {'zombies4test:zcoin'}, rarity = 2},
            {items = {'zombies4test:canned_beans'}, rarity = 1},
        }
    },

    selection_box = {
        type = "fixed",
        fixed = {-0.3, -0.5, -0.3, 0.3, 0.1, 0.3},
    },
    
    node_box = {
        type = "fixed", 
        fixed = {-0.3, -0.5, -0.3, 0.3, 0.1, 0.3},
    },
})




-------- GRAVESTONE : ================================================================================================
core.register_node("zombies4test:gravestone", {
    description = S("Gravestone"),
    drawtype = "mesh",
    mesh = "gravestone.obj",
    tiles = {"gravestone_dirt.png"},
    paramtype = "light",
    paramtype2 = "facedir",
    sunlight_propagates = true,
    walkable = true, 
    floodable = false,
    groups = {cracky = 2, oddly_breakable_by_hand = 1},

    drop = {
        max_items = 2,
        items = {
            {items = {'zombies4test:zcoin'}, rarity = 2},
            {items = {'zombies4test:knife'}, rarity = 3},
            {items = {'zombies4test:bandaid'}, rarity = 2},
            {items = {'zombies4test:candy'}, rarity = 2},
            {items = {'zombies4test:canned_beans'}, rarity = 1},
        }
    },
    
    selection_box = {
        type = "fixed",
        fixed = {-0.2, -0.5, -0.1, 0.2, 0.4, 0.1},
    },
    
    node_box = {
        type = "fixed", 
        fixed = {-0.2, -0.5, -0.1, 0.2, 0.4, 0.1},
    },
})



---- MEDICINE BOX : =======================================================================================
core.register_node("zombies4test:medicinebox", {
    description = S("Medicine Box"),
    drawtype = "mesh",
    mesh = "medicine_box.obj",
    tiles = {"medicine_box.png"},
    paramtype = "light",
    paramtype2 = "facedir",
    sunlight_propagates = true,
    walkable = true, 
    floodable = false,
    groups = {oddly_breakable_by_hand = 1},

    drop = {
        max_items = 2,
        items = {
            {items = {'zombies4test:bandaid'}, rarity = 1},
            {items = {'zombies4test:medicalkit'}, rarity = 7},
        }
    },

    selection_box = {
        type = "fixed",
        fixed = {-0.2, -0.5, -0.3, 0.2, -0.4, 0.2},
    },
    
    node_box = {
        type = "fixed", 
        fixed = {-0.2, -0.5, -0.3, 0.2, -0.4, 0.2},
    },
})



-------- BEDSIDE TABLE : =========================================================================================


local items = {
	
     
        -- TOOLS
       	{name = "zombies4test:knife", chance =2, count =1},
       	{name = "zombies4test:baseball_bat", chance =3, count =1},
       	{name = "zombies4test:claw_hammer", chance =3, count =1},
       	{name = "zombies4test:crowbar", chance =3, count =1},
       	{name = "zombies4test:machete", chance =3, count =1},
       	-- FOOD
       	{name = "zombies4test:canned_tomato", chance =1, count =1},
       	{name = "zombies4test:canned_beans", chance =1, count =1},
       	-- ITENS DECO
       	{name = "zombies4test:zlantern", chance =3, count =1},
      	
             	
       	--- MEDIC
       	{name = "zombies4test:medicinebox", chance =1, count =1},
			
}


--- default : =======================================================
if core.get_modpath("default") then

table.insert(items,{name = "default:torch", chance = 1, count = 3})
table.insert(items,{name = "default:apple", chance =2, count = 5})
table.insert(items,{name = "default:coal_lump", chance = 1, count = 3})
table.insert(items,{name = "default:iron_lump", chance =1, count = 1})
table.insert(items,{name = "farming:bread", chance =1, count =5})

end

--- mcl : ==============================================================
if core.get_modpath("mcl_torches") then
table.insert(items,{name = "mcl_torches:torch", chance = 1, count = 3})
end

if core.get_modpath("mcl_tools") then
table.insert(items,{name = "mcl_tools:sword_gold", chance = 1, count = 3})
end

if core.get_modpath("mcl_bows") then
table.insert(items,{name = "mcl_bows:bow", chance = 1, count = 1})
table.insert(items,{name = "mcl_bows:arrow", chance = 1, count = 10})
end


if core.get_modpath("3d_armor") then 

table.insert(items,{name = "zombies4test:gas_mask", chance = 3, count = 1})
table.insert(items,{name = "zombies4test:rabbit_mask", chance = 3, count = 1})

table.insert(items,{name = "zombies4test:hat_head", chance = 2, count = 1})
table.insert(items,{name = "zombies4test:Jacket_torso", chance = 2, count = 1})
table.insert(items,{name = "zombies4test:jeanspants_legs", chance = 2, count = 1})
table.insert(items,{name = "zombies4test:tennis_feet", chance = 2, count = 1})

table.insert(items,{name = "zombies4test:helmet_military", chance = 1, count = 1})
table.insert(items,{name = "zombies4test:chestplate_military", chance = 1, count = 1})
table.insert(items,{name = "zombies4test:leggings_military", chance = 1, count = 1})
table.insert(items,{name = "zombies4test:boots_military", chance = 1, count = 1})

table.insert(items,{name = "zombies4test:helmet_Juggernaut", chance = 1, count = 1})
table.insert(items,{name = "zombies4test:chestplate_Juggernaut", chance = 1, count = 1})
table.insert(items,{name = "zombies4test:leggings_Juggernaut", chance = 1, count = 1})
table.insert(items,{name = "zombies4test:boots_Juggernaut", chance = 1, count = 1})
--table.insert(items,{name = "zombies4test:shield_Juggernaut", chance = 2, count = 1})


end


if core.get_modpath("mcl_armor") then 

table.insert(items,{name = "zombies4test:helmet_survivor", chance = 1, count = 10})
table.insert(items,{name = "zombies4test:chestplate_survivor", chance = 1, count = 10})
table.insert(items,{name = "zombies4test:leggings_survivor", chance = 1, count = 10})
table.insert(items,{name = "zombies4test:boots_survivor", chance = 1, count = 10})

table.insert(items,{name = "zombies4test:helmet_military", chance = 1, count = 10})
table.insert(items,{name = "zombies4test:chestplate_military", chance = 1, count = 10})
table.insert(items,{name = "zombies4test:leggings_military", chance = 1, count = 10})
table.insert(items,{name = "zombies4test:boots_military", chance = 1, count = 10})

table.insert(items,{name = "zombies4test:helmet_juggernaut", chance = 1, count = 10})
table.insert(items,{name = "zombies4test:chestplate_juggernaut", chance = 1, count = 10})
table.insert(items,{name = "zombies4test:leggings_juggernaut", chance = 1, count = 10})
table.insert(items,{name = "zombies4test:boots_juggernaut", chance = 1, count = 10})



end





core.register_node("zombies4test:bedside_0", {
	--description = "Bed Side 0",
	drawtype = "mesh",
	mesh = "bedside.obj",
	--visual_size = {x=1, y=1},
	--inventory_image = "",
	tiles = {"bedside.png"},
	paramtype = "light",
	paramtype2 = "facedir",
	--on_place = core.rotate_node,
	sunlight_propagates = true,
	walkable = true, 
	floodable = false,
	groups = {cracky = 3, oddly_breakable_by_hand = 3,not_in_creative_inventory=1},
	drop = "zombies4test:bedside",
	
	sounds = {        
        footstep = {name = "wood_steep", gain = 0.5},
        -- dig = {name = "", gain = 0.5},
        -- dug = {name = "", gain = 1.0},
        -- place = {name = "", gain = 1.0},
         },
	
	selection_box = {
		type = "fixed",
		--    esqueda,altura,tras..,direita ,negativo aumenta para baixo, positivo aumenta para cima
		fixed = {-0.4, -0.5, -0.4, 0.4, 0.5, 0.4},
	},
	
	node_box = {
		type = "fixed", 
		fixed = {-0.4, -0.5, -0.4, 0.4, 0.5, 0.4},
	},
	
	
	on_rightclick = function(pos, node, clicker, itemstack, pointed_thing)
	
	core.sound_play("key_normal", {
		    pos = pos,
		    gain = 1.0,
		    max_hear_distance = 10,
		})
		
		
        core.set_node(pos, {name = "zombies4test:bedside_1",param2=node.param2})
        end
        
          

	
	
})

  
 
core.register_node("zombies4test:bedside_1", {
	--description = "Bed Side",
	drawtype = "mesh",
	mesh = "bedside.obj",
	--visual_size = {x=1, y=1},
	--inventory_image = "",
	tiles = {"bedside.png"},
	paramtype = "light",
	paramtype2 = "facedir",
	--on_place = core.rotate_node,
	sunlight_propagates = true,
	walkable = true, 
	floodable = false,
	groups = {cracky = 3, oddly_breakable_by_hand = 3,not_in_creative_inventory=1},
	drop = "zombies4test:bedside",
	
	sounds = {        
        footstep = {name = "wood_steep", gain = 0.5},
        -- dig = {name = "", gain = 0.5},
        -- dug = {name = "", gain = 1.0},
        -- place = {name = "", gain = 1.0},
         },
	
	
	
	selection_box = {
		type = "fixed",
		--    esqueda,altura,tras..,direita ,negativo aumenta para baixo, positivo aumenta para cima
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
	      --meta:set_string("infotext", "Bedside")
	      local inv = meta:get_inventory()
	      inv:set_size("main", 8*4)
	      
	   
	      
	       
	        for i = 2,4 do -- Quantidade de itens no baú
		    local item = items[math.random(1, #items)] --  itens
		    local stack =math.random(1, 8) -- Local slot
                    inv:set_stack("main", stack, item)
                end
             


	  end,
	  
	    	after_place_node = function(pos, placer, itemstack, pointed_thing)
        	local meta = core.get_meta(pos)  
        	meta:set_string("infotext", "There is something inside the drawer, click")  
    		end,
	
	  on_dig = function(pos, node, digger)
		local meta = core.get_meta(pos)
		local inv = meta:get_inventory()
		if not inv:is_empty("main") then
		    --core.chat_send_player(digger:get_player_name(), "")
		    return
		end
		core.node_dig(pos, node, digger)
	 end,
	 
	  on_rightclick = function(pos, node, clicker, itemstack, pointed_thing)
        
		core.sound_play("bedsitetable", {
		    pos = pos,
		    gain = 1.0,
		    max_hear_distance = 10,
		})
        end
	
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
	groups = {cracky = 3, oddly_breakable_by_hand = 3},
	drop = "zombies4test:bedside",
	
	sounds = {        
        footstep = {name = "wood_steep", gain = 0.5},
        -- dig = {name = "", gain = 0.5},
        -- dug = {name = "", gain = 1.0},
        -- place = {name = "", gain = 1.0},
         },
	
	
	
	selection_box = {
		type = "fixed",
		--    esqueda,altura,tras..,direita ,negativo aumenta para baixo, positivo aumenta para cima
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
	      
	      
	      
	     -- meta:set_string("infotext", "")
	      local inv = meta:get_inventory()
	      inv:set_size("main", 8*4)

	  end,
	  
	   on_dig = function(pos, node, digger)
		local meta = core.get_meta(pos)
		local inv = meta:get_inventory()
		if not inv:is_empty("main") then
		    --core.chat_send_player(digger:get_player_name(), "")
		    return
		end
		core.node_dig(pos, node, digger)
	 end,
	 
	   on_rightclick = function(pos, node, clicker, itemstack, pointed_thing)
        
		core.sound_play("bedsitetable", {
		    pos = pos,
		    gain = 1.0,
		    max_hear_distance = 10,
		})
           end
	

	
	
})

