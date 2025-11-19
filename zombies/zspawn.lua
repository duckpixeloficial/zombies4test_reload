local zombis_spawn_nodes = {
"default:dirt_with_rainforest",
"default:dirt_with_grass",
"default:dirt_with_dry_grass",
"default:dry_dirt_with_dry_grass",
"default:dirt_with_coniferous_litter",
"default:stone",
"default:ice",
"default:snowblock",
"default:dirt_with_snow",
"default:desert_sand",
"default:desert_stone",
"default:stone",
"default:desert_stone",
"group:soil",
"group:snowy",
"zombies4test:whiteblock_spawn",
"zombies4test:whiteblock",
"zombies4test:grayblock",
-- Mineclone2
"mcl_core:dirt_with_grass",
"mcl_core:redsand",
"mcl_core:snow",
"mcl_core:dirt_with_grass",
"mcl_core:mycelium",
--Oters Mode
"hades_core:ash",
"group:oxidized_stone"
}

local lumberspawn = {
"default:dirt_with_rainforest",
"default:dirt_with_coniferous_litter",
-- Nodes MCL
"mcl_core:dirt_with_grass",
--Oters Mode
"hades_core:ash",
"group:oxidized_stone"
} 

local minerspawn = {
"default:dirt_with_grass",
"default:stone",
"default:stone", 
"default:desert_stone",
"default:mossycobble", 
-- NODE mcl
"mcl_core:stone",
"mcl_core:stone_with_emerald",
"hades_core:stone",
--Oters Mode
"group:oxidized_stone"
} 

--- NODE SPAWN : =================================================
--[[
function zombies_node_spawn (node_name,node_desc,node_tiles)
minetest.register_node(node_name, {
	description = desc,
	paramtype = "light",
	tiles = {node_tiles},
	is_ground_content = false,	
	groups = {cracky=1,level=1},
	drop = "",

})
end

--local spawner_states = {}

function zombies_spawn_monsters (node,zombie_1,zombie_2)
minetest.register_abm({
    nodenames = {node},
    interval = 120,
    chance = 1,
    action = function(pos, node, active_object_count, active_object_count_wider)
       local spawn_pos = minetest.find_node_near(pos, 5, {"air"})

        for _, obj in ipairs(minetest.get_objects_inside_radius(pos, 20)) do
            if obj:is_player() then           
              if spawn_pos then                                            
                    minetest.add_entity(spawn_pos, zombie_1)
                    minetest.add_entity(spawn_pos, zombie_2)
                    minetest.add_entity(spawn_pos, zombie_2)
                    minetest.add_entity(spawn_pos, zombie_2)  
                    minetest.add_entity(spawn_pos, zombie_2)                                   
             end           
            end
        end

    end
})

end

zombies_node_spawn ("zombies4test:doctorzombie_spawner","Doctor spawner","white_block.png^zspaners.png")
zombies_spawn_monsters ("zombies4test:doctorzombie_spawner","zombies4test:doctorzombie","zombies4test:walkingzombie")
]]

--- SPAWNS : ======================================================
	mobs:spawn({
		name = "zombies4test:doctorzombie",
		nodes = {"zombies4test:whiteblock_spawn"},
		min_light = 0,
		max_light = 14,
		chance = 1000,
		min_height = 0,
		max_height = 200,
		active_object_count = 3,
	})
	
	mobs:spawn({
		name = "zombies4test:crawlerzombie",
		nodes = zombis_spawn_nodes,
		min_light = 0,
		max_light = 7,
		chance = 2000,
		min_height = -20000,
		max_height = 200,
		active_object_count = 3,
	})
    
	mobs:spawn({
		name = "zombies4test:walkingzombie",
		nodes = zombis_spawn_nodes,
		min_light = 0,
		max_light = 7, 
		chance = 2000,
		min_height = -20000,
		max_height = 200,
		active_object_count = 6,
	})

	mobs:spawn({
		name = "zombies4test:survivorzombie",
		nodes = zombis_spawn_nodes,
		min_light = 0,
		max_light = 14,
		chance = 2000,
		min_height = 0,
		max_height = 200,
		active_object_count = 6,
	})
	
	mobs:spawn({
		name = "zombies4test:lumberjackzombie",
		nodes = lumberspawn,
		min_light = 0,
		max_light = 14,
		chance = 2000,
		min_height = 0,
		max_height = 200,
		active_object_count = 1,
	})

	mobs:spawn({
		name = "zombies4test:minerzombie",
		nodes = minerspawn,
		min_light = 0,
		max_light = 8,
		chance = 2000,
		max_height = -10,
		active_object_count = 3,
	})
	
	mobs:spawn({
		name = "zombies4test:clown_zombie",
		nodes = zombis_spawn_nodes,
		min_light = 0,
		max_light = 7,
		chance = 5000,
		min_height = -20000,
		max_height = 200,
		active_object_count = 1,
	})

----- ESPECIALS : ===================================
	mobs:spawn({
		name = "zombies4test:runner",
		nodes = zombis_spawn_nodes,
		min_light = 0,
		max_light = 7, 
		chance = 3000,
		min_height = -20000,
		max_height = 200,
		active_object_count = 1,
	})
			
	mobs:spawn({
		name = "zombies4test:boomer", 
		nodes = zombis_spawn_nodes,
		min_light = 0,
		max_light = 7,
		chance = 5000,
		min_height = -20000,
		max_height = 200,
		active_object_count = 3,
	})
	
	mobs:spawn({
		name = "zombies4test:bride",
		nodes = {"zombies4test:floor_block"},
		min_light = 0,
		max_light = 14,
		chance = 1000,
		min_height = 0,
		max_height = 200,
		active_object_count = 3,
	})
	
----- SEMI BOSSES : ====================================
	mobs:spawn({
		name = "zombies4test:spitterzombie",
		nodes = zombis_spawn_nodes,
		min_light = 0,
		max_light = 7, 
		chance = 5000,
		min_height = -20000,
		max_height = 200,
		--max_height = 200,
		active_object_count = 6,
	})
	
	mobs:spawn({
		name = "zombies4test:juggernaut",
		nodes = zombis_spawn_nodes,
		min_light = 0,
		max_light = 7, 
		chance = 5000,
		min_height = -20000,
		max_height = 200,
		--max_height = 200,
		active_object_count = 6,
	})

-- Boss
	mobs:spawn({
		name = "zombies4test:tankzombie",
		nodes = zombis_spawn_nodes,
		min_light = 0,
		max_light = 7,
		chance = 20000,
		min_height = 0,
		max_height = 200,
		--max_height = 200,
		active_object_count =1,
	})	
