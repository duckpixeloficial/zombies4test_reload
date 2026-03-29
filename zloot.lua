local S = core.get_translator("zombies4test")

local items = {    
        -- TOOLS
       	{name = "zombies4test:knife", chance =2, count =1},
       	{name = "zombies4test:baseball_bat", chance =3, count =1},
       	{name = "zombies4test:claw_hammer", chance =3, count =1},
       	{name = "zombies4test:crowbar", chance =3, count =1},
       	{name = "zombies4test:spiked_baseball_bat", chance =3, count =1},
       	{name = "zombies4test:night_stick", chance =3, count =1},
       	{name = "zombies4test:spatula", chance =3, count =1},
       	{name = "zombies4test:hanger", chance =3, count =1},
       	-- FOOD
       	{name = "zombies4test:canned_tomato", chance =1, count =1},
       	{name = "zombies4test:canned_beans", chance =1, count =1},
       	-- ITENS DECO
       	{name = "zombies4test:zlantern", chance =3, count =1},
      	             	
       	--- MEDIC
       	{name = "zombies4test:bandaid", chance =1, count =1},	
       	
       	-- NODES :
       	{name = "zombies4test:cobweb", chance =1, count =1},		
}

local corpse_loot = {
{name = "zombies4test:cobweb", chance =1, count =1},
{name = "zombies4test:zcoin", chance =1, count = 1},
{name = "zombies4test:cobweb", chance =1, count =1},
{name = "zombies4test:bandaid", chance =1, count =2},
{name = "zombies4test:tennis_racket", chance =1, count =2},
{name = "zombies4test:chips", chance =1, count =1},
{name = "zombies4test:donut", chance =1, count =2},
}

local cash_loot = {
 {name = "zombies4test:zcoin", chance =1, count = 1},
}

function zloot_register(zloot_name,def)
core.register_node(zloot_name, {
	--description = "Bed Side",
	drawtype = "mesh",
	mesh = def.mesh,
	tiles = def.tiles,
	paramtype = "light",
	paramtype2 = "facedir",
	sunlight_propagates = true,
	walkable = true, 
	floodable = false,
	groups = {choppy = 3, axey = 1,handy=1,oddly_breakable_by_hand = 3},
	_mcl_hardness = 2.5,
	drop = def.drop,	
	sounds = {        
         footstep = {name = "wood_steep", gain = 0.5,max_hear_distance = 10}
         },
		
	selection_box = {
		type = "fixed",
		fixed = {-0.4, -0.5, -0.4, 0.4, 0.5, 0.4},
	},
	
	node_box = {
		type = "fixed", 
		fixed = {-0.4, -0.5, -0.4, 0.4, 0.5, 0.4},
	},
	
	on_rightclick = function(pos, node, clicker, itemstack, pointed_thing)
              local meta = core.get_meta(pos)   
	      local inv = meta:get_inventory()   
	      local p_name = clicker:get_player_name()
	      local lpos = pos.x .. "," .. pos.y .. "," .. pos.z
	      local nsloots = def.slots
	      
	      core.sound_play(def.sound, {pos = pos,gain = 1.0,max_hear_distance = 5,})

             if meta:get_string("opened") ~= "true"  then
                inv:set_size("main", 8 * nsloots)
	     
	      	if inv:is_empty("main") then	      	   	   	       
	          for i = 1,8 do 
		    local item = def.list[math.random(1, #def.list)]
		    local stack =math.random(1, 8) 
                    inv:set_stack("main", stack, item)
                  end
                end
                
                meta:set_string("opened", "true")
           end
           
           local formspec = "size[8,9]" ..
                     "list[nodemeta:" .. lpos .. ";main;0,0.3;8,4;]" ..
                     "listcolors[#000000BB;#000000BB]"..
                     "list[current_name;main;0,0;8,4;]" ..  
                     "list[current_player;main;0,5;8,4;]" ..
                     "listring[nodemeta:" .. lpos .. ";main]" ..
		      "listring[current_player;main]"
                     core.show_formspec(p_name, zloot_name, formspec)         
          end,
          
        can_dig = function(pos,player)
         local meta = core.get_meta(pos)
         local inv = meta:get_inventory()
          return inv:is_empty("main")
        end,	
})
end

---- REGISTER LOOTS (TEST)
zloot_register("zombies4test:bedside_0",{
mesh = "bedside.obj",
tiles = {"bedside.png"},
drop = "zombies4test:bedside",
slots = 3,
sound = "bedsitetable",
list = items,
})

zloot_register("zombies4test:corpse",{
mesh = "corpse.obj",
tiles = {"walkingzombie.png"},
drop = "",
slots = 2,
sound = "open_backpack",
list = corpse_loot,
})

zloot_register("zombies4test:cash_register",{
mesh = "cash_register.obj",
tiles = {"cash_register.png"},
drop = "zombies4test:cash_register_deco",
slots = 2,
sound = "cash",
list = cash_loot,
})

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
    groups = {snappy = 3},
    _mcl_hardness = 0.2,
    drop = {
        max_items = 2,
        items = {
            {items = {'zombies4test:canned_beans 2'}, rarity = 2}, 
            {items = {'zombies4test:canned_tomato 2'}, rarity = 1},         
            {items = {'zombies4test:colt_python_bullet 3'}, rarity = 1},         
            {items = {'zombies4test:zcoin'}, rarity = 1},
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

-------- GRAVESTONE : ==========================================================
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
    groups = {cracky = 3},
    _mcl_hardness = 2,
    drop = {
        max_items = 2,
        items = {
            {items = {'zombies4test:zcoin'}, rarity = 2},
            {items = {'zombies4test:colt_python_bullet 5'}, rarity = 1},
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
    groups = {snappy = 3},
    _mcl_hardness = 0.2,
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

---- SUPORTES : =======================================================
--- default : =========================================================
if not core.get_modpath("rangedweapons") and not core.get_modpath("ctf_core") and not core.get_modpath("rifles") and not core.get_modpath("guns4d_pack_1") then
table.insert(items,{name = "zombies4test:colt_python_bullet", chance = 3, count = 5})
table.insert(items,{name = "zombies4test:chiappa_rhino_discharged", chance = 3, count = 1})
table.insert(items,{name = "zombies4test:colt_python_discharged", chance = 3, count = 1})
table.insert(items,{name = "zombies4test:small_calibe_bullet", chance = 3, count = 5})
end

if core.get_modpath("default") then
table.insert(items,{name = "default:torch", chance = 1, count = 3})
table.insert(items,{name = "default:apple", chance =2, count = 5})
table.insert(items,{name = "default:coal_lump", chance = 1, count = 3})
table.insert(items,{name = "default:iron_lump", chance =1, count = 3})
table.insert(items,{name = "farming:bread", chance =1, count =5})
table.insert(items,{name = "farming:seed_wheat", chance =1, count =5})
table.insert(items,{name = "farming:string", chance =1, count =3})
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
table.insert(items,{name = "zombies4test:jason_mask", chance = 3, count = 1})

table.insert(items,{name = "zombies4test:hat_head", chance = 2, count = 1})
table.insert(items,{name = "zombies4test:Jacket_torso", chance = 2, count = 1})
table.insert(items,{name = "zombies4test:jeanspants_legs", chance = 2, count = 1})
table.insert(items,{name = "zombies4test:tennis_feet", chance = 2, count = 1})
table.insert(items,{name = "zombies4test:chestplate_jacketpink", chance = 3, count = 1})
table.insert(items,{name = "zombies4test:chestplate_dressshirt", chance = 2, count = 1})
table.insert(items,{name = "zombies4test:chicken_hat", chance = 5, count = 1})

table.insert(items,{name = "zombies4test:helmet_nvg", chance = 3, count = 1})
end

if core.get_modpath("mcl_armor") then
table.insert(items,{name = "zombies4test:helmet_rabbit_mask", chance = 1, count = 10})
table.insert(items,{name = "zombies4test:helmet_nvg", chance = 1, count = 10})
table.insert(items,{name = "zombies4test:helmet_jason_mask", chance = 1, count = 10})
 
table.insert(items,{name = "zombies4test:helmet_survivor", chance = 1, count = 10})
table.insert(items,{name = "zombies4test:chestplate_survivor", chance = 1, count = 10})
table.insert(items,{name = "zombies4test:leggings_survivor", chance = 1, count = 10})
table.insert(items,{name = "zombies4test:boots_survivor", chance = 1, count = 10})

table.insert(items,{name = "zombies4test:chestplate_jacketpink", chance = 1, count = 10})
table.insert(items,{name = "zombies4test:chestplate_dressshirt", chance = 1, count = 10})
table.insert(items,{name = "zombies4test:helmet_chicken_hat", chance = 1, count = 10})

end
