local itens = {
-- Itens Max = 8

    {icon = "canned_tomato.png", count = "zombies4test:zcoin 5" , desc ="Canned Tomato \n COST = 5 \n SELL = 5", sell = "zombies4test:canned_tomato 5"},
    {icon = "beans_canned.png",  count = "zombies4test:zcoin 5", desc ="Canned Beans \n COST = 5 \n SELL = 5",sell= "zombies4test:canned_beans 5"},  
     
    {icon = "sos_kit_lados.png",  count = "zombies4test:zcoin 10", desc ="Medic Kit \n COST = 10 \n SELL = 1", sell = "zombies4test:medicalkit 1"},
    {icon = "axe_zombie.png",  count = "zombies4test:zcoin 30", desc ="Fire Axe \n COST = 15 \n SELL = 1", sell = "zombies4test:fireaxe 1"},
    
    {icon = "katana.png",  count = "zombies4test:zcoin 35", desc ="Katana \n COST = 35 \n SELL = 1", sell = "zombies4test:Katana 1"},
    {icon = "Chainsaw.png",  count = "zombies4test:zcoin 50", desc ="Chainsaw \n COST = 50 \n SELL = 1", sell = "zombies4test:chainsaw 1"},    
    
    
    --- GUNS E BULLETS :
    
    {icon = "cody_python.png",  count = "zombies4test:zcoin 70", desc ="Colt Python \n COST = 70 \n SELL = 1", sell = "zombies4test:colt_python_discharged 1"},
    {icon = "cody_python_bullet.png", count = "zombies4test:zcoin 5", desc ="Python Bullet \n COST = 5 \n SELL = 10", sell = "zombies4test:colt_python_bullet 10"},
 
    {icon = "FNSCAR.png", count = "zombies4test:zcoin 90" , desc ="Fnscar \n COST = 90 \n SELL = 1", sell = "zombies4test:fnscar_discharged 1"},
    {icon = "FNSCAR_cartridge.png",  count = "zombies4test:zcoin 5", desc ="Fnscar Cartridge \n COST = 5 \n SELL = 1",sell= "zombies4test:fnscar_cartridge 1"},
    
    
    {icon = "M1887.png",  count = "zombies4test:zcoin 110", desc ="Model1887 \n COST = 110 \n SELL = 1", sell = "zombies4test:model1887_discharged 1"},
    {icon = "m1887_bullet.png",  count = "zombies4test:zcoin 10", desc ="M1887 Bullet \n COST = 10 \n SELL = 10", sell = "zombies4test:model1887_bullet 10"},
    
    
    {icon = "Remington870.png",  count = "zombies4test:zcoin 160", desc ="Remington870 \n COST = 160 \n SELL = 1", sell = "zombies4test:remington870_discharged 1"},
    {icon = "Remington870_bullet.png",  count = "zombies4test:zcoin 10", desc ="R870 Bullet \n COST = 10 \n SELL = 10", sell = "zombies4test:remington870_bullet 10"},
    
    
    {icon = "sawed_off_shotgun.png",  count = "zombies4test:zcoin 140", desc ="Shotgun \n COST = 140 \n SELL = 1", sell = "zombies4test:sawedoffshotgunt_discharged 1"},
    {icon = "Sawedoffshotgun_bullet.png", count = "zombies4test:zcoin 10", desc ="Shotgun Bullet \n COST = 10 \n SELL = 10", sell = "zombies4test:sawedoffshotgun_bullet 10"},
    
  
}


local function get_formspec(self, clicker)
    
   
    
    local formspec = {
        "size[7.5,8.5]".. --..
        --"listcolors[#000000BB;#000000BB]"
        " background[1,2;6,4;form_bg_shop.png;true]"..
        "style_type[label;textcolor=#a18117]"
       

    }

   
    for i, shop in ipairs(itens) do
    
        
        local x = (i - 1) % 4 * 2 
        local y = math.floor((i - 1) / 4) * 2  --(i - 1) * 1.2 
        
        local y_desc = math.floor((i - 1) / 4) * 2 + 0.8  -- Descrição
        local size = "6.5,1.2" 
        

        local size_icons = "0.9,0.9" 
         
        
        table.insert(formspec, "image_button[" .. x .. "," .. y .. ";" .. size_icons .. ";" .. shop.icon .. ";button" .. i .. ";]")
        table.insert(formspec, "label[" .. x .. "," .. y_desc .. ";" .. shop.desc .. "]")
        
    end

    
  
    
    return table.concat(formspec, "")
    
end




--- MOB TRADER JHOM ==========================================================================================================================================

mobs:register_mob("zombies4test:ztrader", {

    type = "npc",
    nametag = "Jhom (Trader)" ,
    hp_max = 999,
    hp_min = 999,
    walk_velocity = 0,
    run_velocity = 0,
    jump = false,
    fall_speed = -10,
    knock_back = false,
    collisionbox = {-0.4, -1.0 ,-0.4, 0.4, 1.0, 0.4},
    visual = "mesh",
    mesh = "ztraders.b3d",
    textures = {"ztraders.png"},
    visual_size = {x=10, y=10},
    makes_footstep_sound = true,
   -- sounds = { },
    
    
    on_rightclick = function(self, clicker)
       
        local open =  get_formspec()
                core.show_formspec(clicker:get_player_name(), "zombies4test:formspec",open)
        
    end,
   
})



-- - FIELDS, LOGIC BUTTONS =====================================================================================
core.register_on_player_receive_fields(function(player, formname, fields )

    if formname == "zombies4test:formspec" then
    
            
    for i, item in ipairs(itens) do
    
    
    local zcoins_stack = ItemStack(item.count)
    local zcoins = player:get_inventory():contains_item("main",zcoins_stack)
    
    local button_name = "button"..tostring(i)
    
    
    if fields[button_name]  then
	    if i == i then
	   	 if zcoins then
				player:get_inventory():remove_item("main",zcoins_stack)
			        player:get_inventory():add_item("main", item.sell)
				 --core.chat_send_player(player:get_player_name(), item.sell)
				core.sound_play("cash", {pos = pos, gain = 0.5})
				 
				else
				core.chat_send_player(player:get_player_name(), "Insufficient Zcoins")
			end
	    end 
    end
    
    
    
   end -- for
 end 
 
end)

-- ============================================================================================================

mobs:register_egg("zombies4test:ztrader", "Trader", "zombies_egg.png", 1)


core.register_node("zombies4test:ztrader_spawn", {
    description = "Trader Spawn",
    tiles = {"spawn_trader.png"},
    groups = {cracky = 3},
    
})



mobs:spawn({
	name = "zombies4test:ztrader",
	nodes = "zombies4test:grayblock",
	--neighbors = {" "},
	min_light = 0,
	max_light = 14,
	chance = 1000,
	min_height = 0,
	--max_height = 200,
	--day_toggle = true,
	active_object_count = 1,
})





