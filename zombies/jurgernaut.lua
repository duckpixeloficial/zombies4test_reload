local S = minetest.get_translator("zombies4test")

local j_drops = {
"zombies4test:zcoin 50"
}

if core.get_modpath("3d_armor") then 
table.insert(j_drops,"zombies4test:helmet_Juggernaut")
table.insert(j_drops,"zombies4test:chestplate_Juggernaut")
table.insert(j_drops,"zombies4test:leggings_Juggernaut")
table.insert(j_drops,"zombies4test:boots_Juggernaut")
end

if core.get_modpath("mcl_armor") then 
table.insert(j_drops,"zombies4test:helmet_juggernaut")
table.insert(j_drops,"zombies4test:chestplate_juggernaut")
table.insert(j_drops,"zombies4test:leggings_juggernaut")
table.insert(j_drops,"zombies4test:boots_juggernaut")
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
	hp_min = 250,
	hp_max = 250,
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
		
	on_die = function(self, pos) 	
	 local item = j_drops[math.random(#j_drops)]
         minetest.add_item(pos, item)
	end
})

mobs:register_egg("zombies4test:juggernaut", S("Juggernaut"), "zombies_egg.png", 0)
