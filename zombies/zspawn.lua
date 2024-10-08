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



--- SPAWNS : =============================================

------ COMUNS : ==========================================
--[[
mobs:spawn({
	name = "zombies4test:doctorzombie",
	nodes = zombis_spawn_nodes,
	min_light = 0,
	max_light = 14,
	chance = 7000,
	min_height = 0,
	max_height = 200,
	--max_height = 200,
	active_object_count = 1,
})
]]

mobs:spawn({
	name = "zombies4test:doctorzombie", -- somente em hospital
	nodes = {"zombies4test:whiteblock","group:soil"},
	min_light = 0,
	max_light = 14,
	chance = 7000,
	min_height = 0,
	max_height = 200,
	--max_height = 200,
	active_object_count = 1,
})


mobs:spawn({
	name = "zombies4test:crawlerzombie",
	nodes = zombis_spawn_nodes,
	min_light = 0,
	max_light = 7,
	chance = 7000,
	min_height = -20000,
	max_height = 200,
	--max_height = 200,
	active_object_count = 3,
})


mobs:spawn({
	name = "zombies4test:walkingzombie",
	nodes = zombis_spawn_nodes,
	min_light = 0,
	max_light = 7, -- 14
	chance = 7000,
	min_height = -20000,
	max_height = 200,
	--max_height = 200,
	active_object_count = 6,
})


mobs:spawn({
	name = "zombies4test:runner",
	nodes = zombis_spawn_nodes,
	min_light = 0,
	max_light = 7, -- 14
	chance = 30000,
	min_height = -20000,
	max_height = 200,
	--max_height = 200,
	active_object_count = 1,
})


mobs:spawn({
	name = "zombies4test:survivorzombie",
	nodes = zombis_spawn_nodes,
	min_light = 0,
	max_light = 14,
	chance = 5000,
	min_height = 0,
	max_height = 200,
	--max_height = 200,
	active_object_count = 6,
})



----- ESPECIAIS : ========================================
mobs:spawn({
	name = "zombies4test:lumberjackzombie",
	nodes = lumberspawn,
	min_light = 0,
	max_light = 14,
	chance = 7000,
	min_height = 0,
	max_height = 200,
	--max_height = 200,
	active_object_count = 1,
})


mobs:spawn({
	name = "zombies4test:minerzombie",
	nodes = minerspawn,
	min_light = 0,
	max_light = 8,
	chance = 7000,
	--min_height = -29000,
	max_height = -10,
	--max_height = 200,
	active_object_count = 3,
})


----- SEMI BOSSES : ====================================
mobs:spawn({
	name = "zombies4test:spitterzombie",
	nodes = zombis_spawn_nodes,
	min_light = 0,
	max_light = 7, -- 14
	chance = 7000,
	min_height = -20000,
	max_height = 200,
	--max_height = 200,
	active_object_count = 6,
})



------ BOSSES : =======================================

--[[

mobs:spawn({
	name = "zombies4test:tankzombie",
	nodes = zombis_spawn_nodes,
	min_light = 0,
	max_light = 7, -- 14
	chance = 16000,
	min_height = 0,
	max_height = 200,
	--max_height = 200,
	active_object_count =1,
})

]]

