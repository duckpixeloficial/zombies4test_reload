
zombies4test.event = core.settings:get_bool("zombies4test.event", true)


-- ADICIONAR BOSS E MSG ======================================================================================
local function add_boss()
    local time_of_day = core.get_timeofday()
    -- Verifica se é noite
    if time_of_day >= 0.75 or time_of_day < 0.25 then
        for _, player in ipairs(core.get_connected_players()) do
            local pos = player:get_pos()
            local min_pos = {x = pos.x - 50, y = pos.y, z = pos.z - 50}
            local max_pos = {x = pos.x + 50, y = pos.y, z = pos.z + 50}
            local spawn_pos = {x = pos.x + 10, y = pos.y + 3, z = pos.z + 10}
            
	    local nodes = core.find_nodes_in_area(min_pos, max_pos, {"group:dirt","group:sand","group:stone"})  
	    
            core.sound_play({name = "emergency_power", gain = 1.0, max_hear_distance = 2})
            core.chat_send_all(core.colorize("#ff0000", "Attention: Invasion has started!"))

            if nodes then
                core.add_entity(spawn_pos, "zombies4test:tankzombie")
                for i = 1, 4 do
                    core.add_entity(spawn_pos, "zombies4test:walkingzombie")
                    core.add_entity(spawn_pos, "zombies4test:runner")
                    core.add_entity(spawn_pos, "zombies4test:survivorzombie")
                    core.add_entity(spawn_pos, "zombies4test:doctorzombie")
                end
            end
        end
    end
end

-- INICIAR INVASÃO ======================================================================================
local function invasion_event()
    local time_of_day = core.get_timeofday()

    for _, player in ipairs(core.get_connected_players()) do
        if not core.get_modpath("mcl_core") then
            if time_of_day >= 0.75 or time_of_day < 0.25 then
                core.after(1, function()
                    player:set_sky({
                        base_color = "#FF0000",
                        type = "skybox",
                        day_sky = "#61b5f5",
                        night_sky = "#FF0000"
                    })

                    -- ATIVAR META
                    local meta = player:get_meta()
                    meta:set_string("invasion_active", "true")
                end)
            end
        end
    end

    -- ADICIONAR BOSS
    add_boss()
end

-- RETORNAR AO PADRÃO ===================================================================================
--[[
local function return_normal_day()
    local time_of_day = core.get_timeofday()

    if not core.get_modpath("mcl_core") then
        for _, player in ipairs(core.get_connected_players()) do
            core.after(3, function()
                if time_of_day > 0.25 and time_of_day < 0.75 then
                    player:set_sky({
                        base_color = "#ffffff",
                        type = "regular",
                        night_sky = "#006bff",
                        day_sky = "#61b5f5"
                    })

                    -- ATUALIZAR META FALSE
                    local meta = player:get_meta()
                    meta:set_string("invasion_active", "false")
                end
            end)
        end
    end
end

]]

local function return_normal_day()
    local time_of_day = core.get_timeofday()

    if not core.get_modpath("mcl_core") then
        for _, player in ipairs(core.get_connected_players()) do
            core.after(3, function()
                if time_of_day > 0.25 and time_of_day < 0.75 then
                    player:set_sky({
                        base_color = "#ffffff",
                        type = "regular",
                        night_sky = "#006bff",
                        day_sky = "#61b5f5"
                    })

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
for _, player in ipairs(core.get_connected_players()) do
local meta = player:get_player_name()
meta:set_int("zombie kills" ,0)
end


----- HUDS : =======================================================================================================
local zhuds = {}

function huds_pos_days(player)
    local p_name = player:get_player_name()
    local p_pos = player:get_pos()
    local pos_text = string.format("Pos: (%.2f, %.2f, %.2f)", p_pos.x, p_pos.y, p_pos.z)

    -- Corrigido para obter os metadados do jogador corretamente
    local meta = player:get_meta()
    local zombies_kills_hud = meta:get_int("zombie_kills")

    local p_days = "Days : "..math.floor(core.get_day_count())

      
      zhuds[1] = player:hud_add({
        hud_elem_type = "image",
        alignment = {x=1, y=0},
        offset = {x=1670, y=340},
        scale = {x=3.5, y=3.5},
        text = "hud_bg.png"
    })
    
    
    zhuds[2] = player:hud_add({
        hud_elem_type = "text",
        position = {x=1, y=0},
        offset = {x=-140, y=310},
        scale = {x=1, y=1},
        text = "Player : "..p_name
    })

    zhuds[3] = player:hud_add({
        hud_elem_type = "text",
        position = {x=1, y=0},
        offset = {x=-180, y=330},
        scale = {x=1, y=1},
        text = p_days
    })

    zhuds[4] = player:hud_add({
        hud_elem_type = "text",
        position = {x=1, y=0},
        offset = {x=-160, y=350},
        scale = {x=1, y=1},
        text = "Zombie Kills : "..zombies_kills_hud
    })

    zhuds[5] = player:hud_add({
        hud_elem_type = "text",
        position = {x=1, y=0},
        offset = {x=-120, y=370},
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
    local pos_text = string.format("Pos: (%.2f, %.2f, %.2f)", p_pos.x, p_pos.y, p_pos.z)

    -- Atualiza os elementos HUD
    player:hud_change(zhuds[3], "text", p_days)
    player:hud_change(zhuds[4], "text","Zombie Kills : "..tostring(zombies_kills_hud))
    player:hud_change(zhuds[5], "text", pos_text)
end



--[[
core.register_on_joinplayer(function(player)
    huds_pos_days(player)

end)
]]

core.register_on_joinplayer(function(player)

    huds_pos_days(player)
    
    -- oOBERTO META PARA GARANTIR QUE CONTINUA O EFEITO APOS A SAIDA E RETORNO
    local meta = player:get_meta()
    local invasion_active = meta:get_string("invasion_active")

    if invasion_active == "true" then
        player:set_sky({
            base_color = "#FF0000",
            type = "skybox",
            day_sky = "#61b5f5",
            night_sky = "#FF0000"
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
         invasion_update() -- atualizando invasão

       end
    
     for _, player in ipairs(core.get_connected_players()) do
          huds_pos_day_update (player)
    end
    
    
    
end)


--return zhuds
