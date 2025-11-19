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

minetest.register_node("zombies4test:backpack", {
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
         core.sound_play("open_backpack", {pos = pos,gain = 1.0,max_hear_distance = 5})
        end,

})
