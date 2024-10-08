---- Cardboard box: ==========================================================
minetest.register_node("zombies4test:cardboardbox", {
    description = "Cardboard Box",
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
minetest.register_node("zombies4test:gravestone", {
    description = "Gravestone",
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
minetest.register_node("zombies4test:medicinebox", {
    description = "Medicine Box",
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
if minetest.get_modpath("default") then

table.insert(items,{name = "default:torch", chance = 1, count = 3})
table.insert(items,{name = "default:apple", chance =2, count = 5})
table.insert(items,{name = "default:coal_lump", chance = 1, count = 3})
table.insert(items,{name = "default:iron_lump", chance =1, count = 1})
table.insert(items,{name = "farming:bread", chance =1, count =5})

end

--- mcl : ==============================================================
if minetest.get_modpath("mcl_torches") then
table.insert(items,{name = "mcl_torches:torch", chance = 1, count = 3})
end

if minetest.get_modpath("mcl_tools") then
table.insert(items,{name = "mcl_tools:sword_gold", chance = 1, count = 3})
end

if minetest.get_modpath("mcl_bows") then
table.insert(items,{name = "mcl_bows:bow", chance = 1, count = 1})
table.insert(items,{name = "mcl_bows:arrow", chance = 1, count = 10})
end








minetest.register_node("zombies4test:bedside_0", {
	--description = "Bed Side 0",
	drawtype = "mesh",
	mesh = "bedside.obj",
	--visual_size = {x=1, y=1},
	--inventory_image = "",
	tiles = {"bedside.png"},
	paramtype = "light",
	paramtype2 = "facedir",
	--on_place = minetest.rotate_node,
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
        minetest.set_node(pos, {name = "zombies4test:bedside_1",param2=node.param2})
        end

	
	
})

  
 
minetest.register_node("zombies4test:bedside_1", {
	--description = "Bed Side",
	drawtype = "mesh",
	mesh = "bedside.obj",
	--visual_size = {x=1, y=1},
	--inventory_image = "",
	tiles = {"bedside.png"},
	paramtype = "light",
	paramtype2 = "facedir",
	--on_place = minetest.rotate_node,
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
         
        
	      local meta = minetest.get_meta(pos)      
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
        	local meta = minetest.get_meta(pos)  
        	meta:set_string("infotext", "There is something inside the drawer, click")  
    		end,
	
	  on_dig = function(pos, node, digger)
		local meta = minetest.get_meta(pos)
		local inv = meta:get_inventory()
		if not inv:is_empty("main") then
		    --minetest.chat_send_player(digger:get_player_name(), "")
		    return
		end
		minetest.node_dig(pos, node, digger)
	 end
	
})


minetest.register_node("zombies4test:bedside", {
	description = "Bedside Table",
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
         
        
	      local meta = minetest.get_meta(pos)
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
		local meta = minetest.get_meta(pos)
		local inv = meta:get_inventory()
		if not inv:is_empty("main") then
		    --minetest.chat_send_player(digger:get_player_name(), "")
		    return
		end
		minetest.node_dig(pos, node, digger)
	 end
	

	
	
})

