
local S = minetest.get_translator("zombies4test")
-- Sound zombie_girl : https://freesound.org/people/Bernuy/sounds/277473/
mobs:register_mob("zombies4test:bride", {
	type = "monster",
	passive = false,
	attack_type = "dogfight",
	attack_npcs = false,
	group_attack = true,
	pathfinding = true,
	reach = 3,
	damage = 4,
	attack_chance = 95,
	hp_min = 50,
	hp_max = 50,
	armor = 100,
	collisionbox = {-0.4, 0, -0.4, 0.4, 1.8, 0.4},
	visual = "mesh",
	mesh = "walkingzombie.b3d",
	textures = {
		{"bride.png"},		
	},
	makes_footstep_sound = true,
	sounds = {
	        random ="zombie_girl",
		death = "zombie_death ",
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
	jump_height = 1.1,
	floats = 0,
	view_range = 25,
	fall_damage = 0,
	-------------------------
	drops = {	
		{name = "zombies4test:claws", chance = 6, min = 1, max = 1},
		{name = "zombies4test:zcoin", chance = 2, min = 2, max = 5},		
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
		
	on_die = function(self, pos) -- POSIÇÃO
		self:death_anim()
		zombies_count(self, pos)
		return true -- dont remove mob until death anim finished
	end
})

mobs:register_egg("zombies4test:bride",S("Bride"),"zombies_egg.png", 0)
