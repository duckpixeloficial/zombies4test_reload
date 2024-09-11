--[[

10-15 /2 dmg > fleshy=2
20-25 /5 dmg > fleshy=5
30-35 /10 dmg > fleshy=10
40-45 /15 dmg > fleshy=15
60-65 /20 dmg > fleshy=20

]]
-- zombies4test


---- REGISTER BULLETS =================================================

 function zweapons.bullet_register(name, def)



    minetest.register_craftitem(name, {
        description = def.description,
        inventory_image = def.inventory_image,  
    })







----- REGISTER, ENTITES : ==============================================



minetest.register_entity(name.."_projectile", {
    initial_properties = {
        visual = "sprite",
        textures = {"bullet_ent.png"},
        physical = false,
        collide_with_objects = false,
        --pointable = false,
        visual_size = {x = 0.1, y = 0.1, z = 0.1},
        collisionbox = {-0.5,-0.5,-0.5, 0.5,0.5,0.5},
        selectionbox = {0,0,0, 0,0,0},
    },
    


    -- CALLBACKS
    on_step = function(self, dtime,player)
        
    	
        local pos = self.object:get_pos()
        local node = minetest.get_node_or_nil(pos) 

        -- SE ESTAR PROXIMA DO PROJETIL
        local radius = 2.0
        local objects = minetest.get_objects_inside_radius(pos, radius)

        for _, obj in pairs(objects) do
            local obj_pos = obj:get_pos()
            local obj_props = obj:get_properties()

            -- PROPIEDADES DO OBJETO:
            if obj_props and obj_props.collisionbox then
                local collisionbox = obj_props.collisionbox

                -- SE COLIDIU:
                if obj ~= self.object and
                   pos.x >= obj_pos.x + collisionbox[1] and
                   pos.x <= obj_pos.x + collisionbox[4] and
                   pos.y >= obj_pos.y + collisionbox[2] and
                   pos.y <= obj_pos.y + collisionbox[5] and
                   pos.z >= obj_pos.z + collisionbox[3] and
                   pos.z <= obj_pos.z + collisionbox[6] then
                   
                     obj:punch(self.object, 1.0, {
                            full_punch_interval=1.0,
                            damage_groups={fleshy=def.damage},
                          
                        })
                        
                        
                    --minetest.sound_play("tum", {pos=self.object:get_pos(), gain=1.0, max_hear_distance = 10})
                    self.object:remove()

                    else
                    -- SE FOR NODE?
                    local node = minetest.get_node_or_nil(pos)
                    if node and node.name ~= "air" then
                      
                   self.object:remove()

                    end

                end
            end
        end

       
                
          
    end,
    
    })

end




--[[
-- PROJECTIL :  5DMG =====================================================================================
minetest.register_entity("zweapons:projetil_ent_0", {
    initial_properties = {
        visual = "sprite",
        textures = {"bullet_enty.png"},
        physical = false,
        collide_with_objects = false,
        --pointable = false,
        visual_size = {x = 0.2, y = 0.2, z = 0.2},
        collisionbox = {-0.5,-0.5,-0.5, 0.5,0.5,0.5},
        selectionbox = {0,0,0, 0,0,0},
    },
    


    -- CALLBACKS
    on_step = function(self, dtime)
        
        local pos = self.object:get_pos()
        local node = minetest.get_node_or_nil(pos) 

        -- SE ESTAR PROXIMA DO PROJETIL
        local radius = 2.0
        local objects = minetest.get_objects_inside_radius(pos, radius)

        for _, obj in pairs(objects) do
            local obj_pos = obj:get_pos()
            local obj_props = obj:get_properties()

            -- PROPIEDADES DO OBJETO:
            if obj_props and obj_props.collisionbox then
                local collisionbox = obj_props.collisionbox

                -- SE COLIDIU:
                if obj ~= self.object and
                   pos.x >= obj_pos.x + collisionbox[1] and
                   pos.x <= obj_pos.x + collisionbox[4] and
                   pos.y >= obj_pos.y + collisionbox[2] and
                   pos.y <= obj_pos.y + collisionbox[5] and
                   pos.z >= obj_pos.z + collisionbox[3] and
                   pos.z <= obj_pos.z + collisionbox[6] then
                   
                     obj:punch(self.object, 1.0, {
                            full_punch_interval=1.0,
                            damage_groups={fleshy=2}, 
                        })
                    --minetest.sound_play("impact", {pos=self.object:get_pos(), gain=1.0, max_hear_distance = 10})
                    self.object:remove()

                    else
                    -- SE FOR NODE?
                    local node = minetest.get_node_or_nil(pos)
                    if node and node.name ~= "air" then
                      
                   self.object:remove()

                    end

                end
            end
        end

       
                
          
    end,
                        

})

-- PROJECTIL :  5DMG =====================================================================================
minetest.register_entity("zweapons:projetil_ent", {
    initial_properties = {
        visual = "sprite",
        textures = {"bullet_enty.png"},
        physical = false,
        collide_with_objects = false,
        --pointable = false,
        visual_size = {x = 0.2, y = 0.2, z = 0.2},
        collisionbox = {-0.5,-0.5,-0.5, 0.5,0.5,0.5},
        selectionbox = {0,0,0, 0,0,0},
    },
    


    -- CALLBACKS
    on_step = function(self, dtime)
        
        local pos = self.object:get_pos()
        local node = minetest.get_node_or_nil(pos) 

        -- SE ESTAR PROXIMA DO PROJETIL
        local radius = 2.0
        local objects = minetest.get_objects_inside_radius(pos, radius)

        for _, obj in pairs(objects) do
            local obj_pos = obj:get_pos()
            local obj_props = obj:get_properties()

            -- PROPIEDADES DO OBJETO:
            if obj_props and obj_props.collisionbox then
                local collisionbox = obj_props.collisionbox

                -- SE COLIDIU:
                if obj ~= self.object and
                   pos.x >= obj_pos.x + collisionbox[1] and
                   pos.x <= obj_pos.x + collisionbox[4] and
                   pos.y >= obj_pos.y + collisionbox[2] and
                   pos.y <= obj_pos.y + collisionbox[5] and
                   pos.z >= obj_pos.z + collisionbox[3] and
                   pos.z <= obj_pos.z + collisionbox[6] then
                   
                     obj:punch(self.object, 1.0, {
                            full_punch_interval=1.0,
                            damage_groups={fleshy=5}, 
                        })
                    --minetest.sound_play("impact", {pos=self.object:get_pos(), gain=1.0, max_hear_distance = 10})
                    self.object:remove()

                    else
                    -- SE FOR NODE?
                    local node = minetest.get_node_or_nil(pos)
                    if node and node.name ~= "air" then
                      
                   self.object:remove()

                    end

                end
            end
        end

       
                
          
    end,
                        

})


-- PROJECTIL :  10 DMG ========================================================================================
minetest.register_entity("zweapons:projetil_ent2", {
    initial_properties = {
        visual = "sprite",
        textures = {"bullet_enty.png"},
        physical = false,
        collide_with_objects = false,
        --pointable = false,
        visual_size = {x = 0.2, y = 0.2, z = 0.2},
        collisionbox = {-0.5,-0.5,-0.5, 0.5,0.5,0.5},
        selectionbox = {0,0,0, 0,0,0},
    },
    


    -- CALLBACKS
    on_step = function(self, dtime)
        
        local pos = self.object:get_pos()
        local node = minetest.get_node_or_nil(pos) 

        -- SE ESTAR PROXIMA DO PROJETIL
        local radius = 2.0
        local objects = minetest.get_objects_inside_radius(pos, radius)

        for _, obj in pairs(objects) do
            local obj_pos = obj:get_pos()
            local obj_props = obj:get_properties()

            -- PROPIEDADES DO OBJETO:
            if obj_props and obj_props.collisionbox then
                local collisionbox = obj_props.collisionbox

                -- SE COLIDIU:
                if obj ~= self.object and
                   pos.x >= obj_pos.x + collisionbox[1] and
                   pos.x <= obj_pos.x + collisionbox[4] and
                   pos.y >= obj_pos.y + collisionbox[2] and
                   pos.y <= obj_pos.y + collisionbox[5] and
                   pos.z >= obj_pos.z + collisionbox[3] and
                   pos.z <= obj_pos.z + collisionbox[6] then
                   
                     obj:punch(self.object, 1.0, {
                            full_punch_interval=1.0,
                            damage_groups={fleshy=10}, 
                        })
                    --minetest.sound_play("impact", {pos=self.object:get_pos(), gain=1.0, max_hear_distance = 10})
                    self.object:remove()

                    else
                    -- SE FOR NODE?
                    local node = minetest.get_node_or_nil(pos)
                    if node and node.name ~= "air" then
                      
                   self.object:remove()

                    end

                end
            end
        end

        
            
          
    end,
                        

})


-- PROJECTIL : 15 DMG ========================================================================================
minetest.register_entity("zweapons:projetil_ent3", {
    initial_properties = {
        visual = "sprite",
        textures = {"bullet_enty.png"},
        physical = false,
        collide_with_objects = false,
        --pointable = false,
        visual_size = {x = 0.2, y = 0.2, z = 0.2},
        collisionbox = {-0.5,-0.5,-0.5, 0.5,0.5,0.5},
        selectionbox = {0,0,0, 0,0,0},
    },
    


    -- CALLBACKS
    on_step = function(self, dtime)
        
        local pos = self.object:get_pos()
        local node = minetest.get_node_or_nil(pos) 

        -- SE ESTAR PROXIMA DO PROJETIL
        local radius = 2.0
        local objects = minetest.get_objects_inside_radius(pos, radius)

        for _, obj in pairs(objects) do
            local obj_pos = obj:get_pos()
            local obj_props = obj:get_properties()

            -- PROPIEDADES DO OBJETO:
            if obj_props and obj_props.collisionbox then
                local collisionbox = obj_props.collisionbox

                -- SE COLIDIU:
                if obj ~= self.object and
                   pos.x >= obj_pos.x + collisionbox[1] and
                   pos.x <= obj_pos.x + collisionbox[4] and
                   pos.y >= obj_pos.y + collisionbox[2] and
                   pos.y <= obj_pos.y + collisionbox[5] and
                   pos.z >= obj_pos.z + collisionbox[3] and
                   pos.z <= obj_pos.z + collisionbox[6] then
                   
                     obj:punch(self.object, 1.0, {
                            full_punch_interval=1.0,
                            damage_groups={fleshy=15}, 
                        })
                    --minetest.sound_play("impact", {pos=self.object:get_pos(), gain=1.0, max_hear_distance = 10})
                    self.object:remove()

                    else
                    -- SE FOR NODE?
                    local node = minetest.get_node_or_nil(pos)
                    if node and node.name ~= "air" then
                      
                   self.object:remove()

                    end

                end
            end
        end
       
        
            
          
    end,
                        

})



-- PROJECTIL : 20 DMG ========================================================================================
minetest.register_entity("zweapons:projetil_ent4", {
    initial_properties = {
        visual = "sprite",
        textures = {"bullet_enty.png"},
        physical = false,
        collide_with_objects = false,
        --pointable = false,
        visual_size = {x = 0.2, y = 0.2, z = 0.2},
        collisionbox = {-0.5,-0.5,-0.5, 0.5,0.5,0.5},
        selectionbox = {0,0,0, 0,0,0},
    },
    


    -- CALLBACKS
    on_step = function(self, dtime)
        
        local pos = self.object:get_pos()
        local node = minetest.get_node_or_nil(pos) 

        -- SE ESTAR PROXIMA DO PROJETIL
        local radius = 2.0
        local objects = minetest.get_objects_inside_radius(pos, radius)

        for _, obj in pairs(objects) do
            local obj_pos = obj:get_pos()
            local obj_props = obj:get_properties()

            -- PROPIEDADES DO OBJETO:
            if obj_props and obj_props.collisionbox then
                local collisionbox = obj_props.collisionbox

                -- SE COLIDIU:
                if obj ~= self.object and
                   pos.x >= obj_pos.x + collisionbox[1] and
                   pos.x <= obj_pos.x + collisionbox[4] and
                   pos.y >= obj_pos.y + collisionbox[2] and
                   pos.y <= obj_pos.y + collisionbox[5] and
                   pos.z >= obj_pos.z + collisionbox[3] and
                   pos.z <= obj_pos.z + collisionbox[6] then
                   
                     obj:punch(self.object, 1.0, {
                            full_punch_interval=1.0,
                            damage_groups={fleshy=20}, 
                        })
                    --minetest.sound_play("impact", {pos=self.object:get_pos(), gain=1.0, max_hear_distance = 10})
                    self.object:remove()

                    else
                    -- SE FOR NODE?
                    local node = minetest.get_node_or_nil(pos)
                    if node and node.name ~= "air" then
                      
                   self.object:remove()

                    end

                end
            end
        end
       
        
            
          
    end,
                        

})



-- PROJECTIL 25 DMG =====================================================================================================
minetest.register_entity("zweapons:projetil_ent5", {
    initial_properties = {
        visual = "sprite",
        textures = {"bullet_enty.png"},
        physical = false,
        collide_with_objects = false,
        --pointable = false,
        visual_size = {x = 0.2, y = 0.2, z = 0.2},
        collisionbox = {-0.5,-0.5,-0.5, 0.5,0.5,0.5},
        selectionbox = {0,0,0, 0,0,0},
    },
    


    -- CALLBACKS
    on_step = function(self, dtime)
        
        local pos = self.object:get_pos()
        local node = minetest.get_node_or_nil(pos) 

        -- SE ESTAR PROXIMA DO PROJETIL
        local radius = 2.0
        local objects = minetest.get_objects_inside_radius(pos, radius)

        for _, obj in pairs(objects) do
            local obj_pos = obj:get_pos()
            local obj_props = obj:get_properties()

            -- PROPIEDADES DO OBJETO:
            if obj_props and obj_props.collisionbox then
                local collisionbox = obj_props.collisionbox

                -- SE COLIDIU:
                if obj ~= self.object and
                   pos.x >= obj_pos.x + collisionbox[1] and
                   pos.x <= obj_pos.x + collisionbox[4] and
                   pos.y >= obj_pos.y + collisionbox[2] and
                   pos.y <= obj_pos.y + collisionbox[5] and
                   pos.z >= obj_pos.z + collisionbox[3] and
                   pos.z <= obj_pos.z + collisionbox[6] then
                   
                     obj:punch(self.object, 1.0, {
                            full_punch_interval=1.0,
                            damage_groups={fleshy=25}, 
                        })
                    --minetest.sound_play("impact", {pos=self.object:get_pos(), gain=1.0, max_hear_distance = 10})
                    self.object:remove()

                    else
                    -- SE FOR NODE?
                    local node = minetest.get_node_or_nil(pos)
                    if node and node.name ~= "air" then
                      
                   self.object:remove()

                    end

                end
            end
        end
        
            
          
    end,
                        



})



]]
