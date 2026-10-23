local S = minetest.get_translator("zombies4test")

local jugger_drops  = {
 	 {name = "zombies4test:helmet_juggernaut", chance = 5, min = 1, max = 1},
	 {name = "zombies4test:chestplate_juggernaut", chance = 4, min = 1, max = 1},
	 {name = "zombies4test:leggings_juggernaut", chance = 4, min = 1, max = 1},
	 {name = "zombies4test:boots_juggernaut", chance = 2, min = 1, max = 1},
	 {name = "zombies4test:zcoin", chance = 1, min = 10, max = 25}
}

local mili_drops  = {
 	 {name = "zombies4test:helmet_military", chance = 5, min = 1, max = 1},
	 {name = "zombies4test:chestplate_military", chance = 4, min = 1, max = 1},
	 {name = "zombies4test:leggings_military", chance = 4, min = 1, max = 1},
	 {name = "zombies4test:boots_military", chance = 2, min = 1, max = 1},
	 {name = "zombies4test:zcoin", chance = 1, min = 5, max = 10}
}

if core.get_modpath("mcl_mobitems") then 
	table.insert(jugger_drops  ,{name = "mcl_mobitems:rotten_flesh", chance = 1, min = 0, max = 2})
	table.insert(mili_drops  ,{name = "mcl_mobitems:rotten_flesh", chance = 1, min = 0, max = 2})
end

mobs:register_mob("zombies4test:juggernaut", {
	type = "monster",
	passive = false,
	attack_type = "dogfight",
	attack_npcs = false,
	group_attack = true,
	pathfinding = true,
	reach = 3,
	damage = 4,
	hp_min = 200,
	hp_max = 200,
	armor = 80,
	collisionbox = {-0.4, 0, -0.4, 0.4, 1.8, 0.4},
	visual = "mesh",
	mesh = "zombies_jug.b3d",
	textures = {
		{"Juggernaut.png"},
	},
	visual_size = {x = 1.5, y = 1.5},
	makes_footstep_sound = true,
	sounds = {
		random ="zombie_angry_j",
	},
	drops = jugger_drops,
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
	water_damage = 0,
	lava_damage = 1,
	light_damage = 0,
	animation = {
		speed_normal = 15,
		speed_run = 15,
		stand_start = 0,
		stand_end = 20,
		walk_start = 30,
		walk_end = 70,
		run_start = 30,
		run_end = 70,
		punch_start = 80,
		punch_end = 120,
	},
		
	on_die = function(self, pos) -- POSIÇÃO
--		self:death_anim()
		zombies_count(self, pos)
--		return true -- dont remove mob until death anim finished
	end
})

mobs:register_egg("zombies4test:juggernaut", S("Juggernaut"), "zombies_egg.png", 0)

--- POLICE : =======================================================================================
mobs:register_mob("zombies4test:policezombie", {
	type = "monster",
	passive = false,
	attack_type = "dogfight",
	attack_npcs = false,
	group_attack = true,
	pathfinding = true,
	reach = 3,
	damage = 2,
	hp_min = 20,
	hp_max = 20,
	armor = 100,
	collisionbox = {-0.4, 0, -0.4, 0.4, 1.8, 0.4},
	visual = "mesh",
	mesh = "zombies_jug.b3d",
	textures = {
		{"police_zombie.png"},
	},
	visual_size = {x = 1.1, y = 1.1},
	makes_footstep_sound = true,
	sounds = {
	        random ="zombie_angry",
		death = "zombie_death ",
	},
	drops = {
	 {name = "zombies4test:helmet_police", chance = 5, min = 1, max = 1},
	 {name = "zombies4test:chestplate_police", chance = 4, min = 1, max = 1},
	 {name = "zombies4test:leggings_police", chance = 4, min = 1, max = 1},
	 {name = "zombies4test:boots_police", chance = 2, min = 1, max = 1},
	 {name = "zombies4test:zcoin", chance = 1, min = 1, max = 5},
	 {name = "zombies4test:donut", chance = 2, min = 1, max = 5}
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
	view_range = 15,
	fall_damage = 0,
	-------------------------
	water_damage = 0,
	lava_damage = 1,
	light_damage = 0,
	animation = {
		speed_normal = 15,
		speed_run = 15,
		stand_start = 0,
		stand_end = 20,
		walk_start = 30,
		walk_end = 70,
		run_start = 30,
		run_end = 70,
		punch_start = 80,
		punch_end = 120,
	},
		
	on_die = function(self, pos) -- POSIÇÃO
--		self:death_anim()
		zombies_count(self, pos)
        --[[
		if core.get_modpath("mcl_experience") then 
		   mcl_experience.throw_xp(pos, 15)
		end
		]]

--		return true -- dont remove mob until death anim finished
	end
})

mobs:register_egg("zombies4test:policezombie", S("policezombie Zombie"), "zombies_egg.png", 0)

----MILITARY : ===========================================================================
mobs:register_mob("zombies4test:militaryzombie", {
	type = "monster",
	passive = false,
	attack_type = "dogfight",
	attack_npcs = false,
	group_attack = true,
	pathfinding = true,
	reach = 3,
	damage = 3,
	hp_min = 40,
	hp_max = 40,
	armor = 80,
	collisionbox = {-0.4, 0, -0.4, 0.4, 1.8, 0.4},
	visual = "mesh",
	mesh = "zombies_jug.b3d",
	textures = {
		{"military_zombie.png"},
	},
	visual_size = {x = 1.1, y = 1.1},
	makes_footstep_sound = true,
	sounds = {
	        random ="zombie_angry",
			death = "zombie_death ",
	},
	drops = mili_drops,
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
	view_range = 15,
	fall_damage = 0,
	-------------------------
	water_damage = 0,
	lava_damage = 1,
	light_damage = 0,
	animation = {
		speed_normal = 15,
		speed_run = 15,
		stand_start = 0,
		stand_end = 20,
		walk_start = 30,
		walk_end = 70,
		run_start = 30,
		run_end = 70,
		punch_start = 80,
		punch_end = 120,
	},
		
	on_die = function(self, pos) -- POSIÇÃO
--		self:death_anim()
		zombies_count(self, pos)

		if core.get_modpath("mcl_experience") then 
		   mcl_experience.throw_xp(pos, 5)
		end
		
--		return true -- dont remove mob until death anim finished
	end
})

mobs:register_egg("zombies4test:militaryzombie", S("Military Zombie"), "zombies_egg.png", 0)
