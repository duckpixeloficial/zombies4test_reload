local ztrader_itens = {

    {icon = "canned_tomato.png", count = "zombies4test:zcoin 5" , desc ="Canned Tomato \n COST = 5", sell = "zombies4test:canned_tomato 5"},
    {icon = "beans_canned.png",  count = "zombies4test:zcoin 5", desc ="Canned Beans \n COST = 5",sell= "zombies4test:canned_beans 5"},     
    {icon = "medic_kit.png",  count = "zombies4test:zcoin 10", desc ="Medic Kit \n COST = 10", sell = "zombies4test:medicalkit 1"},
    {icon = "axe_zombie.png",  count = "zombies4test:zcoin 15", desc ="Fire Axe \n COST = 15", sell = "zombies4test:fireaxe 1"},  
    
      --- Deco :
    {icon = "backpack__inv.png",  count = "zombies4test:zcoin 20", desc ="Backpack \n COST = 20", sell = "zombies4test:backpack 1"},
    {icon = "stopsign_icon.png",  count = "zombies4test:zcoin 10", desc ="Stop Sign \n COST = 10", sell = "zombies4test:stop_sign 1"},
    {icon = "traffic_cone_icon.png",  count = "zombies4test:zcoin 10", desc ="Traffic Cone \n COST = 10", sell = "zombies4test:traffic_cone 1"},
    {icon = "road_block_inv.png",  count = "zombies4test:zcoin 10", desc ="Traffic Cone \n COST = 10", sell = "zombies4test:road_block 1"},            
}

local function get_formspec(self, clicker)
    local formspec = "size[6,7]" ..
                     "style_type[label;textcolor=#fca800]" ..
                     "scrollbar[5,0.4;0.4,6.7;vertical;scroll;0]" ..
                     "scroll_container[0.5,0.5;6,8;scroll;vertical;0.1]"

    local y_pos = 0
    for i = 1, #ztrader_itens do
        formspec = formspec ..
            "image_button[0,"..y_pos..";5,1.3;bg_inicial.png;btn_" .. i .. ";]" ..
            "image_button[0.15,"..(y_pos + 0.15)..";1,1;"..ztrader_itens[i].icon..";;]" ..
            "label[1.3,"..(y_pos + 0.1)..";"..tostring(ztrader_itens[i].desc).."]"
        y_pos = y_pos + 1.2
    end

    formspec = formspec .. "scroll_container_end[]"
    return formspec
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
      local open =  get_formspec(self, clicker)
            core.show_formspec(clicker:get_player_name(), "zombies4test:formspec",open)        
    end,  
})
-- FIELDS =====================================================================================
core.register_on_player_receive_fields(function(player, formname, fields )

    if formname ~= "zombies4test:formspec" then
        return
    end
                
    for i, item in ipairs(ztrader_itens) do
        
    local zcoins_stack = ItemStack(item.count)
    local zcoins = player:get_inventory():contains_item("main",zcoins_stack)
    local inv = player:get_inventory()
    
    local button_name = "btn_"..tostring(i)
     
    if fields[button_name]  then
	   if i == i then
	   	  if zcoins then
                       local v_inv = inv:add_item("main", item.sell)
                       if v_inv:get_count() > 0 then
			  core.chat_send_player(player:get_player_name(), "Your inventory is full")
			  else
			  inv:remove_item("main",zcoins_stack)
		          --inv:add_item("main", item.sell)
			   --core.chat_send_player(player:get_player_name(), item.sell)
		          core.sound_play("cash", {pos = pos, gain = 0.5})
		       end                                
			else
		     core.chat_send_player(player:get_player_name(), "Insufficient Zcoins")
		 end -- if coins
	    end 
         end   
     end 
end)

-- ============================================================================================================
mobs:register_egg("zombies4test:ztrader", "Trader", "zombies_egg.png", 1)

mobs:spawn({
	name = "zombies4test:ztrader",
	nodes = "zombies4test:wood_cabin_tspawn",
	min_light = 0,
	max_light = 14,
	chance = 1000,
	min_height = 0,
	active_object_count = 1,
})
-- ===== SUPORTE ; ===========================================================================================
if not core.get_modpath("rangedweapons") and not core.get_modpath("ctf_core") and not core.get_modpath("rifles") and not core.get_modpath("guns4d_pack_1") then
table.insert(ztrader_itens,{icon="cody_python.png",count="zombies4test:zcoin 70",desc="Colt Python \n COST = 70",sell="zombies4test:colt_python_discharged 1"})
table.insert(ztrader_itens,{icon="cody_python_bullet.png",count="zombies4test:zcoin 5",desc="Python Bullet \n COST = 5",sell="zombies4test:colt_python_bullet 10"})
table.insert(ztrader_itens,{icon="FNSCAR.png",count="zombies4test:zcoin 90",desc="Fnscar \n COST = 90",sell="zombies4test:fnscar_discharged 1"})
table.insert(ztrader_itens,{icon="FNSCAR_cartridge.png",count="zombies4test:zcoin 5",desc="Fnscar Cartridge \n COST = 5",sell="zombies4test:fnscar_cartridge 1"})
table.insert(ztrader_itens,{icon="M1887.png",count="zombies4test:zcoin 110",desc="Model1887 \n COST = 110",sell="zombies4test:model1887_discharged 1"})
table.insert(ztrader_itens,{icon="m1887_bullet.png",count="zombies4test:zcoin 10",desc="M1887 Bullet \n COST = 10",sell="zombies4test:model1887_bullet 10"})
table.insert(ztrader_itens,{icon="Remington870.png",count="zombies4test:zcoin 160",desc="Remington870 \n COST = 160",sell="zombies4test:remington870_discharged 1"})
table.insert(ztrader_itens,{icon="Remington870_bullet.png",count="zombies4test:zcoin 10",desc="R870 Bullet \n COST = 10",sell="zombies4test:remington870_bullet 10"})
table.insert(ztrader_itens,{icon="sawed_off_shotgun.png",count="zombies4test:zcoin 150",desc="Shotgun \n COST = 140",sell="zombies4test:sawedoffshotgunt_discharged 1"})
table.insert(ztrader_itens,{icon="Sawedoffshotgun_bullet.png",count="zombies4test:zcoin 10",desc="Shotgun Bullet \n COST = 10",sell="zombies4test:sawedoffshotgun_bullet 10"})
table.insert(ztrader_itens,{icon="uzi.png",count="zombies4test:zcoin 130",desc="UZI \n COST = 130",sell="zombies4test:uzi_discharged 1"})
table.insert(ztrader_itens,{icon="bullet_small_guns.png",count="zombies4test:zcoin 10",desc="Small Bullet \n COST = 10",sell="zombies4test:small_calibe_bullet 10"})
end 

if core.get_modpath("bucket") then
table.insert(ztrader_itens,{icon = "bucket.png",  count = "zombies4test:zcoin 5", desc ="Bucket \n COST = 5", sell = "bucket:bucket_empty"})
end

if core.get_modpath("automobiles_motorcycle") then
table.insert(ztrader_itens,{icon = "automobiles_motorcycle.png",  count = "zombies4test:zcoin 100", desc ="Motorcycle \n COST = 100", sell = "automobiles_motorcycle:motorcycle 1"})
table.insert(ztrader_itens,{icon = "automobiles_trans_am.png",  count = "zombies4test:zcoin 150", desc ="Trans Am \n COST = 150", sell = "automobiles_trans_am:trans_am 1"})
table.insert(ztrader_itens,{icon = "automobiles_coupe.png",  count = "zombies4test:zcoin 150", desc ="Coupe \n COST = 150", sell = "automobiles_coupe:coupe 1"})
end

if core.get_modpath("heli") then
table.insert(ztrader_itens,{icon = "heli_b47_ico_inv.png",  count = "zombies4test:zcoin 200", desc ="B47 Helicopter \n COST = 200", sell = "heli:heli 1"})
end

if core.get_modpath("pa28") then
table.insert(ztrader_itens,{icon = "pa28.png",  count = "zombies4test:zcoin 200", desc ="PA-28 \n COST = 200", sell = "pa28:pa28 1"})
end

if core.get_modpath("hangglider") then
table.insert(ztrader_itens,{icon = "hangglider_item.png",  count = "zombies4test:zcoin 50", desc ="PA-28 \n COST = 50", sell = "hangglider:hangglider 1"})
end

if core.get_modpath("grenades_gb") then
table.insert(ztrader_itens,{icon = "molotov.png",  count = "zombies4test:zcoin 10", desc ="PA-28 \n COST = 10", sell = "grenades_gb:molotov_la 1"})
table.insert(ztrader_itens,{icon = "grenade.png",  count = "zombies4test:zcoin 10", desc ="PA-28 \n COST = 10", sell = "grenades_gb:grenade_launcher 1"})
end

