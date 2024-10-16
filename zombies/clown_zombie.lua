
local color_dust = {
"dust_blue.png",
"dust_green.png",
"dust_pink.png",
"dust_violet.png",

}



mobs:register_mob("zombies4test:clown_zombie", {
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
	mesh = "clown_zombie.b3d",
	--rotate = 180,
	textures = {
		{"clown_zombie.png"},
	},
	--glow = 4,
	--blood_texture = " ",
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
	
	
	 custom_attack = function(self, to_attack)
	 
	   for _, player in ipairs(minetest.get_connected_players()) do
	   
	     minetest.chat_send_player(player:get_player_name(), "The dust of laughter is causing slowness!")
	     player:set_physics_override({speed = 0.3})
	     
	     minetest.after(6, function() 
             player:set_physics_override({speed = 1.0}) 
             
           end)
	    	
	   
	   end
	   
	    for _,dust in pairs(color_dust) do
	  	local pos = self.object:get_pos()
	  	
	  	  minetest.add_particlespawner({
		    amount = 3, 
		    time = 1, 
		    minpos = {x = pos.x - 1, y = pos.y, z = pos.z - 1},
		    maxpos = {x = pos.x + 1, y = pos.y + 2, z = pos.z + 1},
		    minvel = {x = -1, y = -1, z = -1}, 
		    maxvel = {x = 1, y = -1, z = 1}, 
		    minacc = {x = 0, y = -1, z = 0},
		    maxacc = {x = 0, y = -1, z = 0}, 
		    minexptime = 3, 
		    maxexptime = 6, 
		    minsize = 1,
		    maxsize = 2,
		    collisiondetection = false,
		    vertical = false, 
		    texture = dust, 
		    glow = 1, 
		})
		
	     end
	   
	   self.object:remove()
      
  	 end,
  	 
  	 
	do_custom = function(...)
	climb_ladders (...)
	remove_glass (...)
	
	end,
	
	on_die = function(...) -- POSIÇÃO
	
  	zombies_count(...)
  	
	  	
	end



	
	
	
})



mobs:register_egg("zombies4test:clown_zombie", "Clown Zombie", "zombies_egg.png", 0)

