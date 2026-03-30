
local S = minetest.get_translator("zombies4test")

local function punch_tank (pos) 
core.add_particlespawner({
    amount = 50,
    time = 0.5,
    minpos = {x=pos.x + 3, y=pos.y + -1, z=pos.z + 3},
    maxpos = {x=pos.x - 2, y=pos.y + 0.3, z=pos.z - 2},
    minvel = {x=0, y=-0.2, z=0},
    maxvel = {x=0, y=-0.2, z=0},
    minacc = {x=0, y=0, z=0},
    maxacc = {x=0, y=0, z=0},
    minexptime = 1.5,
    maxexptime = 1.5,
    minsize = 2,
    maxsize = 1,
    collisiondetection = true,
    vertical = false,
    texture = "default_dirt.png",   
})  
end

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
	mesh = "zombie_tank.b3d",
	visual_size = {x=14, y=14},
	textures = {
		{"zombie_tank.png"},		
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
		stand_start = 1,
		stand_end = 20,
		walk_start = 25,
		walk_end = 55,
		run_speed = 25,
		run_start = 25,
		run_end = 55,
		punch_speed = 10,
		punch_start = 60,
		punch_end = 85,
		die_speed = 25,
		die_start = 90,
		die_end = 130,		
	},
		
	custom_attack = function(self, to_attack)
        local pp =  self.attack:get_pos()
	self.attack_count = (self.attack_count or 0) + 1
	 if self.attack_count < 3 then return end
	    self.attack_count = 0

	    self:set_animation("punch", true)
	  	  
	  --core.after(0.5,function()
	    punch_tank (pp) 
	    core.sound_play("punch_impact_ground", {pos = pos, gain = 0.5}, true)
	    self.attack:set_pos({x=pp.x+3,y=pp.y+5,z=pp.z})
	  --end)	

	 return true 
	 
	end,
  	   	    	   	  
	on_die = function(self, pos) -- POSIÇÃO
		self:death_anim()
		zombies_count(self, pos)
		return true -- dont remove mob until death anim finished
	end
})

mobs:register_egg("zombies4test:tankzombie", S("Tank Zombie"), "zombies_egg.png", 0)
