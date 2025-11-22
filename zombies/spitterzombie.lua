local S = minetest.get_translator("zombies4test")
----- ACID =====================================================================
 function poison_part (pos)
   core.add_particlespawner({
		amount = 5,
		time = 0.1,
		minpos = pos,
		maxpos = pos,
		minvel = {x = dir.x - 1, y = dir.y, z = dir.z - 1},
		maxvel = {x = dir.x + 1, y = dir.y, z = dir.z + 1},
		minacc = {x = 0, y = -5, z = 0},
		maxacc = {x = 0, y = -9, z = 0},
		minexptime = 1,
		maxexptime = 1,
		minsize = 1,
		maxsize = 2,
		texture = "stamina_poison_particle.png"
	})	
end
---- VOMITER ZOMBIE ============================================================
mobs:register_mob("zombies4test:spitterzombie", {
	type = "monster",
	passive = false,
	attack_type = "shoot",
	attack_npcs = false,
	shoot_interval = 4.5,
	arrow = "zombies4test:spitter_arrow",
	shoot_offset = 1,
	pathfinding = true,
	reach = 3,
	damage = 6,
	hp_min = 100,
	hp_max = 100,
	armor = 100,
	collisionbox = {-0.4, 0, -0.4, 0.4, 1.8, 0.4},
	visual = "mesh",
	mesh = "fatzombie.b3d",
	textures = {
		{"fatzombie.png"},
		--{"walkingzombie.png"},

	},
	makes_footstep_sound = true,
	sounds = {
	        random ="zombie_angry",
		--damage = "zombie_hit",
		death = "zombie_death ",
		shoot_attack = "vomitar",
	},
	walk_velocity = 1,
	run_velocity = 3,
	jump_height = 2,
	stepheight = 1.1,
	floats = 0,
	view_range = 35,
	drops = {
		--{name = "", chance = 2, min = 1, max = 1},		
		{name = "zombies4test:chocolate_bar", chance = 2, min = 1, max = 1},
		{name = "zombies4test:pan", chance = 2, min = 1, max = 1},
		{name = "zombies4test:cleaver", chance = 6, min = 1, max = 1},
		{name = "zombies4test:zcoin", chance = 1, min = 3, max = 5},
		

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
		shoot_start =340,
		shoot_end = 380,
	},
	
	on_die = function(...) 
  	zombies_count(...)
	end
})

local poisson_mg = S("You are poisoned!")
mobs:register_arrow("zombies4test:spitter_arrow", {
    visual = "sprite",
    --  visual = "wielditem",
    visual_size = {x = 0.5, y = 0.5},
    textures = {"gas.png"},
    collisionbox = {-0.5, -0.5, -0.5, 0.5, 0.5, 0.5},
    selectionbox = {-0.5, -0.5, -0.5, 0.5, 0.5, 0.5},
    velocity = 20,

    hit_player = function(self, player)

        local duration = 6
        local damage_interval = 1
        local damage = 1
        local time_elapsed = 0

        core.chat_send_player(player:get_player_name(), poisson_mg)

        local function do_damage()
            if time_elapsed >= duration or player:get_hp() <= 0 then
                return
            end
            ---------------------------------------------------------------------------------
            local pos = player:get_pos()
            core.add_particlespawner({
                amount = 3, 
                time = 2, 
                minpos = {x = pos.x - 1, y = pos.y, z = pos.z - 1},
                maxpos = {x = pos.x + 1, y = pos.y + 2, z = pos.z + 1},
                minvel = {x = -0.1, y = 0.1, z = -0.1},
                maxvel = {x = 0.1, y = 0.3, z = 0.1},
                minacc = {x = 0, y = -0.1, z = 0}, 
                maxacc = {x = 0, y = -0.2, z = 0},
                minexptime = 0, 
                maxexptime = 0.5, 
                minsize = 1,
                maxsize = 2,
                collisiondetection = true,
                collision_removal = true,
                object_collision = false,
                vertical = false,
                texture = "poison_particle.png",
            })
            ------------------------------------------------------------------------------------------
            player:set_hp(player:get_hp() - damage)
            time_elapsed = time_elapsed + damage_interval
            core.after(damage_interval, do_damage)
        end
        do_damage()
    end,

    hit_node = function(self, pos)
        self.object:remove()
    end
})

mobs:register_egg("zombies4test:spitterzombie", S("Spitter Zombie"), "zombies_egg.png", 0)
