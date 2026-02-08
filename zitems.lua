local S = core.get_translator("zombies4test")

local zmsg = S("Hello survivor!")
local zmsg2 = S("If you have any questions,")
local zmsg3 = S("click the button below...")

core.register_craftitem("zombies4test:walkietalkie", {
    description = S("Walkie Talkie"),
    inventory_image = "walkietalkie.png",
    droppable = false,
    _mcl_toollike_wield = true,	
    
    on_use = function(itemstack, user, pointed_thing, pos)

	local player_name = user:get_player_name()
	
	core.sound_play("Walkietalkiesoundeffect", {
			pos = pos,
			gain = 1.0,
			max_hear_distance = 5,
		})
				          
        local formspec_walkietalkie_wiki = "size[7,3]"..
            "background[-0.5,-0.5;7.7,4;walkietalkie_msg.png;false]"..
	    "style_type[label;textcolor=#0d1523]".. 
	    "label[0.5,0;"..zmsg.."\n"..zmsg2.."\n"..zmsg3.."]"..
	    "style_type[button;bgcolor=#3e3921]"..
            "button_url[2.5,2;2,2;wiki;Wiki;https://codeberg.org/pixelzone/zombies4test_reload/src/branch/main/README.md]"
      
        
        core.show_formspec(player_name, "zombies4test:walkietalkie_wiki", formspec_walkietalkie_wiki)
        return itemstack
    end,
	
})

---- MEDIC : ( Não tem craft )
local bandaid_desc = S("+ 10 of blood")
core.register_craftitem("zombies4test:bandaid", {
    description = S("Band aid").."\n".. core.colorize("#ff0000",bandaid_desc),
    inventory_image = "band_aid.png",
    on_use = function(itemstack, user, pointed_thing) 
		local hp = user:get_hp()
		if hp ~= 20 then
			user:set_hp(hp + 10)
			itemstack:take_item()
		end
		return itemstack
	end
})

local MedicalKit_desc = S("+ 20 of blood")
core.register_craftitem("zombies4test:medicalkit", {
    description = S("Medical Kit").."\n".. core.colorize("#ff0000", MedicalKit_desc),
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
core.register_craftitem("zombies4test:zcoin", {
	description = "Zcoin",
	inventory_image = "zcoin.png",
	_mcl_toollike_wield = true,

})
---- ITENS PARA MATERIALS : ---------------------------------------------
core.register_craftitem("zombies4test:metal_can", {
    description = "Metal Can",
    inventory_image = "metal_can.png",
})


core.register_craftitem("zombies4test:plastic", {
    description = "Plastic",
    inventory_image = "plastic.png",
})

