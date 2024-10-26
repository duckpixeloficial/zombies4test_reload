



---- SUBIR ESCADAS :
function climb_ladders(self, dtime)
    local pos = self.object:get_pos()  

    if not pos then
        return  
    end

   
    local rounded_pos = {
        x = math.floor(pos.x + 0.5),
        y = math.floor(pos.y + 0.5),
        z = math.floor(pos.z + 0.5)
    }

   
    local directions = {
        {x = 1, y = 0, z = 0}, {x = -1, y = 0, z = 0},
        {x = 0, y = 1, z = 0}, {x = 0, y = -1, z = 0},
        {x = 0, y = 0, z = 1}, {x = 0, y = 0, z = -1}
    }

   
    for _, dir in ipairs(directions) do
        local check_pos = {
            x = rounded_pos.x + dir.x,
            y = rounded_pos.y + dir.y,
            z = rounded_pos.z + dir.z
        }

        local node = core.get_node(check_pos)
        local node_name = node.name  

       
        if node_name and core.registered_nodes[node_name] then
            local node_def = core.registered_nodes[node_name]  

            
            if node_def.climbable == true then
                -- core.chat_send_all("Nó com 'climb' encontrado próximo na posição: " .. core.pos_to_string(check_pos))
               
                self.object:set_pos({x=pos.x, y=pos.y+0.1, z=pos.z}) 
		self.object:set_velocity({x=0, y=-0.5, z=0})
		mobs:set_animation(self, "run")
							        
                return
            end
        end
    end
end


  
  
  
 --  REMOVER VIDROS
  function remove_glass (self, dtime)
  
          local pos = self.object:get_pos()
  
	  for _,players in pairs(core.get_objects_inside_radius(pos,5)) do
	  
	  	if players:is_player() then
	  	
	  	local nodes_glasses = core.find_node_near(pos,1, {"group:glass","default:glass"})
	  		   if nodes_glasses ~= nil then
					    		
				  core.after(0.5, function() 
				   core.remove_node(nodes_glasses)
				    end)
			  end
	  	end
	  end
  
  
  end
  
  
  
  
  
  --- ATAQUE DO TANK :
  
  local last_attack = 0 -- tempo do ultimo ataque
  
  -- insso poderia estar dentro de custom_attack = function(self, to_attack)
 function attack_boss(self, to_attack)
 
	 local current_time = core.get_us_time() -- tempo atual mas emmicro segundos
	 
	  if current_time - last_attack >= 5 * (10^6)  then 
		last_attack = current_time 
		
	        
	   	for _, player in ipairs(core.get_connected_players()) do
				     
				     
			local attached = self.attack:get_attach()
			local pp = player:get_pos()

			if attached then
			self.attack = attached
			end
			

			self.attack:punch(self.object, 5.0, {
		        full_punch_interval=5.0,
		        damage_groups={fleshy=10}, 
		        })
		         
		        self.object:set_animation({x=200, y=280},35, 1, false)        				
			self.attack:set_pos({x=pp.x+3,y=pp.y+5,z=pp.z})				     
			core.sound_play("missozzy", {pos = pos, gain = 0.5})
				   
		 end
	    end
 
 
 end
 
 
 
 --- Count Zombies 
 
 function zombies_count(self, pos)
 
 -- self.object:set_animation({x=260, y=380}, 20, 0)
   	
 for _,players in pairs(core.get_objects_inside_radius(pos,40)) do 
			if players:is_player() then 
			
			local meta = players:get_meta()
			local zombies_kills = meta:get_int("zombie_kills")  
			zombies_kills = zombies_kills + 1
			meta:set_int("zombie_kills", zombies_kills)  
				
			end
		end
 
 end
         
