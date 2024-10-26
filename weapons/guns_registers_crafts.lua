
-- FORTE :

--[[
zweapons.guns_register ("zombies4test:glock_17", {
   description = "Glock 17",
   inventory_image= "glock_17.png",
   bullet_name = "zombies4test:small_calibe_bullet",
   bullet_amount = 17,
   max_shot  = 18 ,
   sound_guns = "shot"
  
})
]]


--[[
zweapons.guns_register ("zombies4test:chiappa_rhino", {
   description = "Chiappa Rhino",
   inventory_image= "chiappa_rhino.png",
   bullet_name = "zombies4test:small_calibe_bullet",
   bullet_amount = 6,  
   max_shot  = 7,
   sound_guns = "shot"
  
})



zweapons.bullet_register("zombies4test:small_calibe_bullet", {
    description = "Small Calibe Bullet",
    inventory_image = "bullet_small_guns.png",
    damage = 5, 
})

]]


--- PYTHON :
zweapons.guns_register ("zombies4test:colt_python", {
   description = "Colt Python\n"..core.colorize("#ff0000", "Damage = 6"),
   inventory_image = "cody_python.png",
   bullet_name = "zombies4test:colt_python_bullet",
   bullet_amount = 6,  
   max_shot  = 7,
   sound_guns = "shot"
  
})

zweapons.bullet_register("zombies4test:colt_python_bullet", {
    description = "Colt Python Bullet",
    inventory_image = "cody_python_bullet.png",
    damage = 10, 
})



--- fnscar:
zweapons.guns_register ("zombies4test:fnscar", {
   description = "Fnscar\n"..core.colorize("#ff0000", "Damage = 15"),
   inventory_image = "FNSCAR.png",
   bullet_name = "zombies4test:fnscar_cartridge",
   bullet_amount = 1,  
   max_shot  = 8,
   sound_guns = "fnscar"
  
})

zweapons.bullet_register("zombies4test:fnscar_cartridge", {
    description = "Fnscar Cartridge",
    inventory_image = "FNSCAR_cartridge.png",
    damage = 15, 
})



------------------------------------------ FORTES : -------------------------------------
--- model1887:
zweapons.guns_register ("zombies4test:model1887", {
   description = "Model1887\n"..core.colorize("#ff0000", "Damage = 20"),
   inventory_image = "M1887.png",
   bullet_name = "zombies4test:model1887_bullet",
   bullet_amount = 6,  
   max_shot  = 8,
   sound_guns = "Sawedoffshotgun"
  
})

zweapons.bullet_register("zombies4test:model1887_bullet", {
    description = "Model1887 Bullet",
    inventory_image = "m1887_bullet.png",
    damage = 20, 
})


--- remington870:
zweapons.guns_register ("zombies4test:remington870", {
   description = "Remington870\n"..core.colorize("#ff0000", "Damage = 20"),
   inventory_image = "Remington870.png",
   bullet_name = "zombies4test:remington870_bullet",
   bullet_amount = 4,  
   max_shot  = 6,
   sound_guns = "Sawedoffshotgun"
  
})

zweapons.bullet_register("zombies4test:remington870_bullet", {
    description = "Remington870 Bullet",
    inventory_image = "Remington870_bullet.png",
    damage = 20, 
})




--- Sawedoffshotgun:
zweapons.guns_register ("zombies4test:sawedoffshotgunt", {
   description = "Sawed Off Shotgun\n"..core.colorize("#ff0000", "Damage = 25"),
   inventory_image = "sawed_off_shotgun.png",
   bullet_name = "zombies4test:sawedoffshotgun_bullet",
   bullet_amount = 2,  
   max_shot  = 3,
   sound_guns = "Sawedoffshotgun"
  
})

zweapons.bullet_register("zombies4test:sawedoffshotgun_bullet", {
    description = "Sawed Off Shotgun Bullet",
    inventory_image = "Sawedoffshotgun_bullet.png",
    damage = 25, 
})


