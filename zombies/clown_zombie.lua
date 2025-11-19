
local S = minetest.get_translator("zombies4test")

mobs:register_mob("zombies4test:clown_zombie", {
	type = "monster",
	passive = false,
	attack_type = "dogfight",
	attack_npcs = false,
	group_attack = true,
	pathfinding = true,
	reach = 3,
	damage = 2,
	hp_min = 25,
	hp_max = 25,
	armor = 100,
	collisionbox = {-0.4, 0, -0.4, 0.4, 1.8, 0.4},
	visual = "mesh",
	mesh = "clown_zombie.b3d",
	textures = {
		{"clown_zombie.png"},
	},
	makes_footstep_sound = true,
	sounds = {
		random ="zombie_angry",
		--damage = "zombie_hit",
		death = "zombie_death ",
	},	
	-----------------------
	pathfinding = 1,
	fear_height = 6,
	stepheight = 1.1,
	walk_velocity = 1,
	run_velocity = 4,
	walk_chance = 50,
	stand_chance = 50,
	jump = true,
	jump_height = 1.1,
	floats = 0,
	view_range = 25,
	fall_damage = 0,
	-------------------------
	drops = {
	     {name = "zombies4test:candy", chance = 2, min = 1, max = 1},
	     {name = "zombies4test:machete", chance = 5, min = 1, max = 1},
	     {name = "zombies4test:zcoin", chance = 2, min = 1, max = 1},
	},
	water_damage = 0,
	lava_damage = 1,
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
	
	on_die = function(...) 	
  	 zombies_count(...)  		  	
	end	
})

mobs:register_egg("zombies4test:clown_zombie", S("Clown Zombie"), "zombies_egg.png", 0)
