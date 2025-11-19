local S = minetest.get_translator("zombies4test")

mobs:register_mob("zombies4test:boomer", {
	type = "monster",
	passive = false,
	attack_npcs = false,
	attack_type = "explode",
	explosion_radius = 2,
	explosion_timer = 3,
	pathfinding = true,
	reach = 3,
	damage = 18,
	hp_min = 10,
	hp_max = 10,
	armor = 100,
	collisionbox = {-0.3, -0, -0.3, 0.3, 1.7, 0.3},
	visual = "mesh",
	mesh = "walkingzombie.b3d",
	textures = {
		{"boomer.png"},
	},
	blood_texture = "tnt_smoke.png",
	makes_footstep_sound = true,
	sounds = {
	  explode = "tnt_explode",
	  fuse = "chaleira2",
	},
	walk_velocity = 2,
	run_velocity = 3,
	jump_height = 1,
	stepheight = 1.1,
	floats = 0,
	view_range = 35,
	drops = {	
		{name = "zombies4test:fire_extintor", chance = 6, min = 1, max = 1},
		{name = "zombies4test:zcoin", chance = 4, min = 1, max = 5},		
	},
	water_damage = 0,
	lava_damage = 0,
	light_damage = 0,
		animation = {
		speed_normal = 15,
		speed_run = 15,
		stand_start = 0,
		stand_end = 80,
		walk_start = 100,
		walk_end = 180,
		run_start = 200,
		run_end = 240,
		punch_start = 200,
		punch_end = 240,
		die_start = 280,
		die_end = 300,
	},
	
	do_custom = function(...)
	climb_ladders (...)
	remove_glass (...)
	end,
	
	on_die = function(...) -- POSIÇÃO
  	
	zombies_count(...)
	
	end
})

mobs:register_egg("zombies4test:boomer", S("Boomer"), "zombies_egg.png", 0)
