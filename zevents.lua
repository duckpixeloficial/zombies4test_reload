local function hud_add(player, hud)
	local hud_style = core.has_feature("hud_def_type_field")
	if hud_style and hud["hud_elem_type"] then
		hud["type"] = hud["hud_elem_type"]
		hud["hud_elem_type"] = nil
	end
	return player:hud_add(hud)
end

zombies4test.event = core.settings:get_bool("zombies4test.event", true)

function spawn_zombies_invasion(player)
    local pos = player:get_pos()

    local min_dist = 10
    local max_dist = 15

    -- posição aleatoria ao redor do jogador
       local offset = {
         x = math.random(min_dist, max_dist) * (math.random() < 0.5 and -1 or 1),
         y = 0,
         z = math.random(min_dist, max_dist) * (math.random() < 0.5 and -1 or 1),
      }

    local spawn_pos = vector.add(pos, offset)

    -- acha o chão (procurar bloco para baixo)
    for y = 10, -10, -1 do
        local p = {x = spawn_pos.x, y = spawn_pos.y + y, z = spawn_pos.z}
        local node = core.get_node(p).name
        --if core.registered_nodes[node] and core.registered_nodes[node].walkable then
        if core.get_item_group(node, "soil") > 0 or core.get_item_group(node, "stone") > 0 then
            spawn_pos.y = p.y + 1
            break
        end
    end
    
    -- Wave (Não se repete para não causar lags)
    core.add_entity(spawn_pos, "zombies4test:survivorzombie")
    core.add_entity(spawn_pos, "zombies4test:lumberjackzombie")
    core.add_entity(spawn_pos, "zombies4test:clown_zombie")
    core.add_entity(spawn_pos, "zombies4test:survivorzombie")
    core.add_entity(spawn_pos, "zombies4test:crawlerzombie")
    core.add_entity(spawn_pos, "zombies4test:runner")
    core.add_entity(spawn_pos, "zombies4test:spitterzombie")
    core.add_entity(spawn_pos, "zombies4test:boomer")
    core.add_entity(spawn_pos, "zombies4test:tankzombie")
    --core.log("sucesso")
end

-- INICIAR INVASÃO ======================================================================================
local function invasion_event()
    local time_of_day = core.get_timeofday()

    for _, player in ipairs(core.get_connected_players()) do
            if time_of_day >= 0.75 or time_of_day < 0.25 then
                core.after(1, function()
                
                if not core.get_modpath("mcl_core") then
                    player:set_sky({
                        base_color = "#650404",
                        type = "skybox",
                        day_sky = "#61b5f5",
                        night_sky = "#650404"
                    })
                end
                    
                    core.sound_play({name = "emergency_power", gain = 1.0, max_hear_distance = 2})
                    core.chat_send_all(core.colorize("#ff0000", "Attention: Invasion has started!"))
	            
	             spawn_zombies_invasion(player)            

                    -- ATIVAR META
                    if player and player:is_player() then
                     local meta = player:get_meta()
                     meta:set_string("invasion_active", "true")                                     
                    end
                                      	            
                end)
            end
        end
end
-- FINALIZAR INVASÃO ======================================================================================
local function return_normal_day()
    local time_of_day = core.get_timeofday()
   
        for _, player in ipairs(core.get_connected_players()) do
            core.after(3, function()
                if time_of_day > 0.25 and time_of_day < 0.75 then
                
                  if not core.get_modpath("mcl_core") then
                    player:set_sky({
                        base_color = "#ffffff",
                        type = "regular",
                        night_sky = "#006bff",
                        day_sky = "#61b5f5"
                    })
                  end

                    -- ATUALIZAR META FALSE
                    if player and player:is_player() then
                        local meta = player:get_meta()
                        if meta then
                            meta:set_string("invasion_active", "false")
                        end
                    end
                   end
                		 		 		 		 		 
            end)
        end
end

-- INVASÃO UPDATE ======================================================================================
local day_interval = 7
local msg_day = 0

local function invasion_update()
    local current_day = core.get_day_count()
    local time_of_day = core.get_timeofday()

    if current_day % day_interval == 0 and current_day ~= msg_day then
        msg_day = current_day
        invasion_event()       
    elseif current_day % day_interval ~= 0 then
        return_normal_day()       
    end
end

--- ZOMBIES KILLS  DATA : ==========================================================================================
core.after(0, function() -- stops error on newer clients
  for _, player in ipairs(core.get_connected_players()) do
    local meta = player:get_player_name()
    meta:set_int("zombie kills" ,0)
  end
end)

----- HUDS : =======================================================================================================
local zhuds = {}

function huds_pos_days(player)
    local p_name = player:get_player_name()
    local p_pos = player:get_pos()
    local pos_text = string.format("Pos: (%.0f, %.0f, %.0f)", p_pos.x, p_pos.y, p_pos.z)

    local meta = player:get_meta()
    local zombies_kills_hud = meta:get_int("zombie_kills")

    local p_days = "Days : "..math.floor(core.get_day_count())

      
      zhuds[1] = hud_add(player, {
        hud_elem_type = "image",
	position = {x = 1, y = .5},
	alignment = {x=-1, y=-1},
	offset = {x=0, y=0},
        scale = {x=3.5, y=3.5},
        text = "hud_bg.png"
    })
        
    zhuds[2] = hud_add(player, {
        hud_elem_type = "text",
	position = {x = 1, y = .5},
	alignment = {x=1, y=1},
	offset = {x=-224, y=-100},
        scale = {x=1, y=1},
        text = "Player : "..p_name
    })

    zhuds[3] = hud_add(player, {
        hud_elem_type = "text",
        scale = {x=1, y=1},
	position = {x = 1, y = .5},
	alignment = {x=1, y=1},
	offset = {x=-224, y=-80},
        text = p_days
    })

    zhuds[4] = hud_add(player, {
        hud_elem_type = "text",
	position = {x = 1, y = .5},
	alignment = {x=1, y=1},
	offset = {x=-224, y=-60},
        scale = {x=1, y=1},
        text = "Zombie Kills : "..zombies_kills_hud
    })

    zhuds[5] = hud_add(player, {
        hud_elem_type = "text",
	position = {x = 1, y = .5},
	alignment = {x=1, y=1},
	offset = {x=-224, y=-40},
        scale = {x=1, y=1},
        text = pos_text
    })
    
end

function huds_pos_day_update(player)
    local p_days = "Days : " .. math.floor(core.get_day_count())

    -- Corrigido para obter os metadados do jogador corretamente
    local meta = player:get_meta()
    local zombies_kills_hud = meta:get_int("zombie_kills")

    local p_pos = player:get_pos()
    local pos_text = string.format("Pos: (%.0f, %.0f, %.0f)", p_pos.x, p_pos.y, p_pos.z)

    -- Atualiza os elementos HUD
    player:hud_change(zhuds[3], "text", p_days)
    player:hud_change(zhuds[4], "text","Zombie Kills : "..tostring(zombies_kills_hud))
    player:hud_change(zhuds[5], "text", pos_text)
end


core.register_on_joinplayer(function(player)

    huds_pos_days(player)
    
    -- oOBERTO META PARA GARANTIR QUE CONTINUA O EFEITO APOS A SAIDA E RETORNO
    local meta = player:get_meta()
    local invasion_active = meta:get_string("invasion_active")

    if invasion_active == "true" then
        player:set_sky({
            base_color = "#650404",
            type = "skybox",
            day_sky = "#61b5f5",
            night_sky = "#650404"
        })
    else
        local time_of_day = core.get_timeofday()
        if time_of_day > 0.25 and time_of_day < 0.75 then
            player:set_sky({
                base_color = "#ffffff",
                type = "regular",
                night_sky = "#006bff",
                day_sky = "#61b5f5"
            })
        end
    end
end)

-- GLOBAL STEP ATUALIZANDO TODOS OS EVENTOS ...=================================================
core.register_globalstep(function(dtime)    
      -- Opção de habilitar evento de  invasão..
      if zombies4test.event then 
         invasion_update() 
      end
    
     for _, player in ipairs(core.get_connected_players()) do
          huds_pos_day_update (player)
     end    
end)
