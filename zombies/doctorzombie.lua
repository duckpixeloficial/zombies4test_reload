
mobs:register_mob("zombies4test:doctorzombie", {
	--nametag = "Doctor Zombie" ,
	type = "monster",
	passive = false,
	attack_type = "dogfight",
	--attack_animals = true,
	attack_npcs = false,
	group_attack = true,
	pathfinding = true,
	reach = 3,
	damage = 3,
	hp_min = 10,
	hp_max = 10,
	armor = 100,
	collisionbox = {-0.4, 0, -0.4, 0.4, 1.8, 0.4},
	visual = "mesh",
	mesh = "walkingzombie.b3d",
	--rotate = 180,
	textures = {
		{"doctorzombie.png"},
	},
	--glow = 4,
	--blood_texture = " ",
	makes_footstep_sound = true,
	sounds = {
		--random ="zombie_angry",
		--attack = "zombie_hit",
		death = "zombie_death ",
	},
	walk_velocity = 1,
	run_velocity = 4,
	jump_height = 2,
	stepheight = 1.1,
	floats = 0,
	view_range = 35,
	fall_damage = 0,
	drops = {

		  {name = "zombies4test:candy", chance = 2, min = 1, max = 1},
		  {name = "zombies4test:bandaid", chance = 4, min = 1, max = 1},
		  {name = "zombies4test:medicalkit", chance = 6, min = 1, max = 1},
		  {name = "zombies4test:zcoin", chance = 5, min = 1, max = 1},


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
	
	on_die = function(...) -- POSIÇÃO
  	zombies_count(...)
	end



	
	
	
})



mobs:register_egg("zombies4test:doctorzombie", "Doctor Zombie", "zombies_egg.png", 0)

