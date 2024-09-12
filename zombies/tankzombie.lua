mobs:register_mob("zombies4test:tankzombie", {
	--nametag = "Tank Zombie" ,
	type = "monster",
	passive = false,
	attack_type = "dogfight",
	--attack_animals = true,
	pathfinding = 1,
	reach = 3,
	damage = 12,
	hp_min = 250,
	hp_max = 250,
	armor = 60,
	collisionbox = {-0.4, 0, -0.4, 0.4, 3.0, 0.4},
	visual = "mesh",
	mesh = "ztank.b3d",
	visual_size = {x=12, y=12},
	--rotate = 180,
	textures = {
		{"tankzombiex.png"},
		--{""},
		
	},
	--glow = 4,
	--blood_texture = " ",
	makes_footstep_sound = true,
	sounds = {
		random ="missozzy",
		--attack = "zombie_hit",
		death = "roar ",
	},
	walk_velocity = 1,
	run_velocity = 3,
	jump_height = 7,
	stepheight = 1.7,
	floats = 0,
	view_range = 35,
	drops = {
		
		{name = "zombies4test:chainsaw", chance = 2, min = 1, max = 1}, ------- remover da loja pra ser item especial do tank
		{name = "zombies4test:zcoin", chance = 1, min = 5, max = 5},
		
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
  	   	  
  	   	  
  	   	on_die = function(self, pos) -- POSIÇÃO

	  	self.object:set_animation({x=260, y=380}, 20, 0)
		for _,players in pairs(minetest.get_objects_inside_radius(pos,64)) do 
				if players:is_player() then 
				
				local meta = players:get_meta()
				local zombies_kills = meta:get_int("zombie_kills")  
				zombies_kills = zombies_kills + 1
				meta:set_int("zombie_kills", zombies_kills)  
					
				end
			end
		end

  


})


mobs:register_egg("zombies4test:tankzombie", "Tank Zombie", "zombies_egg.png", 0)








