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

-- JUMPER :
function jump_jumper(self, dtime)
    local pos = self.object:get_pos() 
    local yaw =  self.object:get_yaw() 

    if not pos then
        return  
    end

        local node = core.get_node(vector.add(pos, core.yaw_to_dir(yaw)))
        local node_name = node.name  

        if node_name and core.registered_nodes[node_name] then
            local node_def = core.registered_nodes[node_name]
             
            if (node_name ~= "air") and node_def.drawtype ~= "plantlike" then
                self.object:set_pos({x=pos.x, y=pos.y+0.1, z=pos.z}) 
		self.object:set_velocity({x=0, y=10, z=0})
		else					        
                return
            end
        end
end

-- REMOVER VIDROS
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
   
--- COUNT ZOMBIES :
function zombies_count(self, pos)
 for _,players in pairs(core.get_objects_inside_radius(pos,40)) do 
       if players:is_player() then 
			
	local meta = players:get_meta()
	local zombies_kills = meta:get_int("zombie_kills")  
	 zombies_kills = zombies_kills + 1
	 meta:set_int("zombie_kills", zombies_kills)  				
	 end
	end
end
 
