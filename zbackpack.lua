local storage = core.get_mod_storage()
zombies4test.backpack = core.settings:get_bool("zombies4test.backpack", false)

local function zbackpack(player)
core.show_formspec(player:get_player_name(), "backpack",
[[              
formspec_version[6]
size[10.5,11]
listcolors[#000000BB;#000000BB]
list[current_player;zbackpack;0.4,0.3;8,4;]
listring[current_player;zbackpack]
list[current_player;main;0.4,5.9;8,4;0]
]]
)
end

-- MOCHILA :
core.register_node("zombies4test:backpack", {
	description = "Backpack",
	drawtype = "mesh",
	mesh = "backpack.obj",	
	tiles = {"backpack.png"},
	inventory_image = "backpack__inv.png",	
	paramtype = "light",
	paramtype2 = "facedir",
	sunlight_propagates = true,
	groups = {dig_immediate=3},
	
	selection_box = {
		type = "fixed",fixed = {-0.3, -0.5, -0.13, 0.3, 0.31, 0.13},
	},
	
	node_box = {
		type = "fixed",fixed = {-0.3, -0.5, -0.13, 0.3, 0.31, 0.13},
	},
       
	on_rightclick = function(pos, node, player)	 
         zbackpack(player)
         core.sound_play("open_backpack", {pos = pos,max_hear_distance = 5})
        end,
})

-- BACKPACK ENTITY :
core.register_entity("zombies4test:backpack_ent", {
   visual = "mesh",
   mesh = "backpack.obj",
   visual_size =  {x = 8.5, y = 8},
   collisionbox = {0},
   physical = false,
   backface_culling = false,
   pointable = false,
   textures =  {"backpack.png"},
   on_activate = function(self, staticdata)
     self._id = tostring(self.object)
     core.after(0.1, function()
          local parent = self.object:get_attach()
                self.object:set_armor_groups({immortal = 1}) -- teste
                if not parent then
                    self.object:remove()
                end
           
          end)
      end,
})

if zombies4test.backpack then ------------------------------------------------------------------------- configurção :

-- https://api.luanti.org/class-reference/#attachments
-- ADD ENTITY
local function add_backpack_player (player)
            local meta = player:get_meta()
            local entity_id = meta:get_string("attached_entity")

            if entity_id and entity_id ~= "" then
                for _, obj in ipairs(core.get_objects_inside_radius(player:get_pos(), 10)) do
                    local luaent = obj:get_luaentity()
                    if luaent and luaent._id == entity_id and luaent._owner == player:get_player_name() then
                        obj:remove()
                        meta:set_string("attached_entity", "")
                        break
                    end
                end
            end

            local pos = player:get_pos()
            local entity = core.add_entity(pos, "zombies4test:backpack_ent")
            if entity then
                entity:set_attach(player, "Body", {x = 0, y = 3.7, z = 2.3}, {x = 0, y = 180, z = 0})
                local new_entity_id = tostring(math.random(100000))
                meta:set_string("attached_entity", new_entity_id)
                entity:get_luaentity()._id = new_entity_id
                entity:get_luaentity()._owner = player:get_player_name()
            end
            
            --core.log("colocou")
end

-- REMOVER ENEITY
local function remove_backpack_player (player)
   local meta = player:get_meta()
            local entity_id = meta:get_string("attached_entity")

            if entity_id and entity_id ~= "" then
                for _, obj in ipairs(core.get_objects_inside_radius(player:get_pos(),5)) do
                    local luaent = obj:get_luaentity()
                    if luaent and luaent._id == entity_id and luaent._owner == player:get_player_name() then
                        obj:remove()
                        meta:set_string("attached_entity", "")
                        break
                    end
                end
   end
   
   --core.log("removeu")
end

--- BACKPACK INV:
local function backpack_inv (player)
   local player_name = player:get_player_name()
    local inv_name = "zombies4test:backpack_" .. player_name

    local inv = core.create_detached_inventory(inv_name, {
        allow_put = function(inv, listname, index, stack, player)
            local current = inv:get_stack(listname, index)
            if not current:is_empty() then
                return 0
            end
            stack:set_count(1)
            return 1
        end,
        allow_take = function(inv, listname, index, stack, player)
            return 1
        end,
        on_put = function(inv, listname, index, stack, player)
            local item_in_put = inv:get_stack("zombies4test:backpack", 1):get_name()
            if item_in_put ~= "zombies4test:backpack" then return 0 end
             
             storage:set_string(inv_name, stack:to_string())
             add_backpack_player (player)
        end,
        on_take = function(inv, listname, index, stack, player)
            storage:set_string(inv_name, "")
            remove_backpack_player (player)
        end,
    })

    inv:set_size("zombies4test:backpack", 1)

    local saved_stack = storage:get_string(inv_name)
    if saved_stack ~= "" then
        inv:set_stack("zombies4test:backpack", 1, ItemStack(saved_stack))
    end
end

-- VERIFICAR SE TEM BACKPACK NO SLOT:  
local function check_backpack_player(player)
    local player_name = player:get_player_name()
    local inv_name = "zombies4test:backpack_" .. player_name
    local inv = core.get_inventory({type="detached", name=inv_name})

    if inv:contains_item("zombies4test:backpack", "zombies4test:backpack") then
       add_backpack_player(player)
    end
end

-- inventario 
core.register_on_joinplayer(function(player)
 backpack_inv (player)
 check_backpack_player(player)
end)

core.register_on_leaveplayer(function(player)
  local meta = player:get_meta()
  local entity_id = meta:get_string("attached_entity")

  if entity_id and entity_id ~= "" then
            for _, obj in ipairs(core.get_objects_inside_radius(player:get_pos(), 10)) do
                local luaent = obj:get_luaentity()
                if luaent and luaent._id == entity_id and luaent._owner == player:get_player_name() then
                    obj:remove()
                    meta:set_string("attached_entity", "")
                    break
                end
            end
        end
end)

-- MODS 
if core.get_modpath("sfinv") ~= nil then
sfinv.register_page("zombies4test:backpack", {
	title = "Backpack",
	get = function(self, player, context)
	        local player_name = player:get_player_name()
                local inv_name = "zombies4test:backpack_" .. player_name
		return sfinv.make_formspec(player, context, 
				"list[detached:" .. inv_name .. ";zombies4test:backpack;3.5,1.5.2;8,1;]"..
				"listring[current_player;zombies4test:backpack]"..
				"listring[current_player;main]"..
				"listring[current_player;craft]"
			, true)
	end
})
end

if core.get_modpath("unified_inventory") ~= nil then
unified_inventory.register_page("zbackpack", {
	get_formspec = function(player, perplayer_formspec)
	        local player_name = player:get_player_name()
                local inv_name = "zombies4test:backpack_" .. player_name
		local formspec ="size[10.5,11]"..
				"list[detached:" .. inv_name .. ";zombies4test:backpack;4.7,2.5;8,1;]"..
				"listring[current_player;zombies4test:backpack]"..
				"list[current_player;main;0.4,5.8;8,4;0]"..
				"label[0.5,0.5;This is still experimental]"..
				"listcolors[#959595;#00000000;#959595]"
				
		return {formspec=formspec}
	end,
})

unified_inventory.register_button("zbackpack", {
		type = "image",
		image = "backpack__inv.png",
		tooltip = "zbackpack",
		hide_lite = true
})
end

if core.get_modpath("mcl_inventory") ~= nil then
mcl_inventory.register_survival_inventory_tab({

	id = "zBackpack",
	description = "Backpack",
	item_icon = "zombies4test:backpack",
	show_inventory = true,

	-- This function must return the tab's formspec for the player
	build = function(player) 
	        local player_name = player:get_player_name()
                local inv_name = "zombies4test:backpack_" .. player_name
		return  table.concat({
				"list[detached:" .. inv_name .. ";zombies4test:backpack;5.4,2.5;8,1;]",
				"listring[current_player;zombies4test:backpack]",
				"label[0.5,0.5;This is still experimental]",
				"listcolors[#959595;#959595;#959595]"})
	end,
	handle = function(player, fields)
	end,
})
end

end --- configuração

