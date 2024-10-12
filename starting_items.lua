
local zbemvindo = [[		
				                            Welcome to the zombie test survivor..
			Explore the world, find buildings and loot, use zcoins to make purchases, 
								                    and most importantly, SURVIVE!
								               
								               ]]

-- Define o formspec
local formspec_1 = "size[8,8]" ..       
                   " background[1,2;6,4;form_bg_z4t.png;true]" .. 
                    "label[0,5;"..zbemvindo.."]" ..                                             
                    "image_button[3.1,7;2,1;zstart.png;start;]" 
                    --"button[3,6;2,4;start;Start]"..
                  
                 

-- Função para mostrar o formspec para um jogador
local function znews_formspec(player)
	local player = player:get_player_name()
    minetest.show_formspec(player,"zombies4test:znews", formspec_1 )
end





minetest.register_on_player_receive_fields(function(player, formname, fields)
    if formname == "zombies4test:znews" then
        if fields.start then
        
            local player_name = player:get_player_name()
            local inv = player:get_inventory()
            
            -- Adiciona os itens ao inventário do jogador
            inv:add_item('main', 'zombies4test:baseball_bat')
            inv:add_item('main', 'zombies4test:canned_tomato 8')
            inv:add_item('main', 'zombies4test:walkietalkie')
            inv:add_item('main', 'zombies4test:bandaid 5')
            
            inv:add_item('main', 'zombies4test:colt_python_discharged')
            inv:add_item('main', 'zombies4test:colt_python_bullet 30')

            -- Fecha a formspec do jogador
            minetest.close_formspec(player_name,formname)
            
        end
    end
end)



minetest.register_on_newplayer(function(player)
	 znews_formspec(player)
	
end)



--[[
minetest.register_on_joinplayer(function(player)
    znews_formspec(player)
end)

]]


