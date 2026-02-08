
local S = minetest.get_translator("zombies4test")

mobs:register_mob("zombies4test:jumperzombie", {
	type = "monster",
	passive = false,
	attack_type = "dogfight",
	pathfinding = 1,
	reach = 3,
	damage = 4,
	hp_min = 350,
	hp_max = 350,
	armor = 80,
	collisionbox = {-0.4, 0, -0.4, 0.4, 1.5, 0.4},
	visual = "mesh",
	mesh = "jumper.b3d",
	visual_size = {x=10, y=10},
	textures = {
		{"jumper.png"},		
	},
	makes_footstep_sound = true,
	sounds = {
		random ="roar",
		--damage = "zombie_hit",
		death = "roar ",
	},
	-----------------------
	pathfinding = 1,
	fear_height = 0,
	stepheight = 1.1,
	walk_velocity = 1,
	run_velocity = 3,
	walk_chance = 50,
	stand_chance = 50,
	jump = true,
	jump_height = 10,
	floats = 0,
	view_range = 25,
	fall_damage = 0,
	-------------------------	
	drops = {		
		{name = "zombies4test:zcoin", chance = 1, min = 20, max = 40},	
		{name = "zombies4test:katana", chance = 6, min = 1, max = 1},	
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
		stand_start = 1,
		stand_end = 20,
		walk_start = 25,
		walk_end = 45,
		run_speed = 15,
		run_start = 25,
		run_end = 45,
		jump_start = 50,
		jump_end = 70,
      		jump_speed = 25,
		punch_speed = 25,
		punch_start = 75,
		punch_end = 95,
		die_speed = 25,
		die_start = 100,
		die_end = 120,		
	},
	
	do_custom = function(self, dtime)	
            local current_time = core.get_us_time()
	     
	     self.last_jump = self.last_jump or 0
	     
             if current_time - self.last_jump >= 3 * (10^6) then
	        last_jump = current_time
                jump_jumper(self, dtime)
             end
	end,
	    	   	  
  	on_die = function(...) 
  	 zombies_count(...)
	end
	
	--[[
	on_death = function(self, killer)
           zombies_count(self, killer, self.object:get_pos())
	end
	]]
})

mobs:register_egg("zombies4test:jumperzombie", S("Jumper Zombie"), "zombies_egg.png", 0)
