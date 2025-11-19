
local S = minetest.get_translator("zombies4test")

mobs:register_mob("zombies4test:tankzombie", {
	type = "monster",
	passive = false,
	attack_type = "dogfight",
	pathfinding = 1,
	reach = 3,
	damage = 12,
	hp_min = 500,
	hp_max = 500,
	armor = 60,
	collisionbox = {-0.4, 0, -0.4, 0.4, 3.0, 0.4},
	visual = "mesh",
	mesh = "ztank.b3d",
	visual_size = {x=12, y=12},
	textures = {
		{"tankzombiex.png"},		
	},
	makes_footstep_sound = true,
	sounds = {
		random ="missozzy",
		--damage = "zombie_hit",
		death = "roar ",
	},

	-----------------------
	pathfinding = 1,
	fear_height = 6,
	stepheight = 1.1,
	walk_velocity = 1,
	run_velocity = 3,
	walk_chance = 50,
	stand_chance = 50,
	jump = true,
	jump_height = 6,
	floats = 0,
	view_range = 25,
	fall_damage = 0,
	-------------------------	
	drops = {		
		{name = "zombies4test:chainsaw", chance = 2, min = 1, max = 1},
		{name = "zombies4test:zcoin", chance = 1, min = 30, max = 50},		
	},
	water_damage = 0,
	lava_damage = 0,
	light_damage = 0,
	immune_to = {	
	{"fortification:wirefence",  -10} ,
	{"fortification:barbed_wire",  -10} ,
	{"fortification:punji_sticks",  -10} ,
	
	},
	animation = {
		speed_normal = 15,
		stand_start = 0,
		stand_end = 80,
		walk_start = 100,
		walk_end = 180,
		run_speed = 45,
		run_start = 100,
		run_end = 180,
		punch_speed = 25,
		punch_start = 200,
		punch_end = 280,
		die_speed = 15,
		die_start = 430,
		die_end = 600,
				
	},	
	custom_attack = function(...)
        attack_boss(...) 
  	end,
  	   	    	   	  
  	on_die = function(...) 
  	zombies_count(...)
	end
})

mobs:register_egg("zombies4test:tankzombie", S("Tank Zombie"), "zombies_egg.png", 0)
