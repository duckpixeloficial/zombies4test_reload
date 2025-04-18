local S = minetest.get_translator("zombies4test")

local zmsg = S("Welcome to Zombies4test,")
local zmsg2 = S("explore,find loot,buy items with zcoins,and survive!")


core.register_on_newplayer(function(player)

	
            local inv = player:get_inventory()
            core.chat_send_player(player:get_player_name(), zmsg..zmsg2)
            
            -- Adiciona os itens ao inventário do jogador
            inv:add_item('main', 'zombies4test:baseball_bat')
            inv:add_item('main', 'zombies4test:canned_tomato 8')
            inv:add_item('main', 'zombies4test:walkietalkie')
            inv:add_item('main', 'zombies4test:bandaid 5')
            
            inv:add_item('main', 'zombies4test:colt_python_discharged')
            inv:add_item('main', 'zombies4test:colt_python_bullet 30')
	    
	    
	
end)


