-- ARMA DESCARREGADA : ======================================================================================

function zweapons.guns_register(name,def)

minetest.register_tool(name.."_discharged", {
    description = def.description,--.." Discharged", 
    inventory_image = def.inventory_image, --"glock_17_discharged.png", 
    wield_image = def.inventory_image, 
    color = "red",
    stack_max = 1,
    groups = {weapons = 1},
    
    on_use = function(itemstack, user, pointed_thing)


            -- ITEM NECESSARIO : 
            local bullets_stack = ItemStack(def.bullet_name .. " " .. def.bullet_amount) -- api
            local bullets = user:get_inventory():contains_item("main", bullets_stack)
            

                if bullets then -- conferir item
                minetest.sound_play("reload", {pos, gain=1.0, max_hear_distance = 10})
                user:get_inventory():remove_item("main",bullets_stack)
                user:set_wielded_item(ItemStack(name.."_recharged 1")) -- seta a nova arma carregada
               
                else               
                minetest.sound_play("click", {pos, gain=1.0, max_hear_distance = 10})
                end

            
    end,


     

})



-- ARMA CARREGADA : ======================================================================================== 

minetest.register_tool(name.."_recharged", {
    description = def.description,--.." Recharged",
    inventory_image = def.inventory_image, 
    wield_image = def.inventory_image, 
    stack_max = 1,
    groups = {not_in_creative_inventory = 1,weapons = 1},

    on_use = function(itemstack, user, pointed_thing)
        local max_use = def.max_shot
        itemstack:add_wear_by_uses(max_use)

        local player_pos = user:get_pos()
        local dir = user:get_look_dir()
        local pspeed = 30

        
        local shot_pos = vector.add(player_pos, {x = dir.x, y = dir.y + 1.5, z = dir.z})

        
        if itemstack:get_wear() <= 1571 then
            minetest.sound_play("click", {pos = player_pos, gain = 1.0, max_hear_distance = 10})
            user:set_wielded_item(ItemStack(name.."_discharged 1"))
            return 
        else
            minetest.sound_play(def.sound_guns, {pos = player_pos, gain = 1.0, max_hear_distance = 10})

            minetest.add_particlespawner({
                amount = 1,
                time = 0.1,
                minpos = shot_pos,
                maxpos = shot_pos,
                minvel = {x = -1, y = -1, z = -1},
                maxvel = {x = 1, y = 1, z = 1},
                minacc = {x = 0, y = 0, z = 0},
                maxacc = {x = 0, y = 0, z = 0},
                minexptime = 1,
                maxexptime = 2,
                minsize = 1,
                maxsize = 2,
                collisiondetection = true,
                vertical = false,
                texture = "smoke_shot.png",
            })

            local proj = minetest.add_entity({
                x = player_pos.x + dir.x, 
                y = player_pos.y + 1.5, 
                z = player_pos.z + dir.z
            }, def.bullet_name.."_projectile")

            proj:set_velocity({
                x = dir.x * pspeed,
                y = dir.y * pspeed, 
                z = dir.z * pspeed
            })

            proj:set_acceleration({
                x = dir.x * 0.1,
                y = dir.y * 0.1,
                z = dir.z * 0.1
            })
        end

        return itemstack
    end


})


end



