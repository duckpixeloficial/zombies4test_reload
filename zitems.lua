
minetest.register_craftitem("zombies4test:walkietalkie", {
    description = " Walkie Talkie",
    inventory_image = "walkietalkie.png",
    droppable = false,	
   on_use = function() -- msg (player)
	--minetest.chat_send_all ("HELP ME ,PLEASE...")
	minetest.sound_play("Walkietalkiesoundeffect", {
			pos = pos,
			gain = 1.0,
			max_hear_distance = 5,
		})
    end,
	
})



---- MEDIC : ( Não tem craft )

minetest.register_craftitem("zombies4test:bandaid", {
    description = "Band aid\n".. core.colorize("#ff0000", "+ 2 of blood"),
    inventory_image = "band_aid.png",
    on_use = function(itemstack, user, pointed_thing) 
		local hp = user:get_hp()
		if hp ~= 20 then
			user:set_hp(hp + 2)
			itemstack:take_item()
		end
		return itemstack
	end
})


minetest.register_craftitem("zombies4test:medicalkit", {
    description = "Medical Kit\n".. core.colorize("#ff0000", "+ 20 of blood"),
    inventory_image = "medic_kit.png",
    on_use = function(itemstack, user, pointed_thing) 
		local hp = user:get_hp()
		if hp ~= 20 then
			user:set_hp(hp + 20)
			itemstack:take_item()
		end
		
		return itemstack
	end
})



---- ZCOIN --------------------------------------------------------------

minetest.register_craftitem("zombies4test:zcoin", {
	description = "Zcoin",
	inventory_image = "zcoin.png",

})






---- ITENS PARA MATERIALS : ---------------------------------------------


minetest.register_craftitem("zombies4test:metal_can", {
    description = "Metal Can",
    inventory_image = "metal_can.png",
})


minetest.register_craftitem("zombies4test:plastic", {
    description = "Plastic",
    inventory_image = "plastic.png",
})





--[[

minetest.register_craftitem("zombies4test:screw", {
    description = "Screw",
    inventory_image = "screw.png",
})


minetest.register_craftitem("zombies4test:discarded_battery", {
    description = "Discarded Battery",
    inventory_image = "",
})

]]





