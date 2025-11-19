
-- FORTE :
zweapons.guns_register ("zombies4test:chiappa_rhino", {
   description = "Chiappa Rhino\n"..core.colorize("#fca800","Damage = 6\nBullet = 6 (Small Bullet)"),
   inventory_image= "chiappa_rhino.png",
   bullet_name = "zombies4test:small_calibe_bullet",
   bullet_amount = 6,  
   max_shot  = 7,
   sound_guns = "shot"
  
})

zweapons.guns_register ("zombies4test:deagle", {
   description = "Deagle\n"..core.colorize("#fca800","Damage = 6\nBullet = 8 (Small Bullet)"),
   inventory_image= "deagle.png",
   bullet_name = "zombies4test:small_calibe_bullet",
   bullet_amount = 8,  
   max_shot  = 9,
   sound_guns = "shot"
  
})

zweapons.guns_register ("zombies4test:golden_deagle", {
   description = "Golden Deagle\n"..core.colorize("#fca800","Damage = 6\nBullet = 10 (Small Bullet)"),
   inventory_image= "golden_deagle.png",
   bullet_name = "zombies4test:small_calibe_bullet",
   bullet_amount = 10,  
   max_shot  = 11,
   sound_guns = "shot"
  
})

zweapons.guns_register ("zombies4test:glock_17", {
   description = "Glock 17\n"..core.colorize("#fca800","Damage = 6\nBullet = 18 (Small Bullet)"),
   inventory_image= "glock_17.png",
   bullet_name = "zombies4test:small_calibe_bullet",
   bullet_amount = 18,
   max_shot  = 19 ,
   sound_guns = "shot"
  
})

zweapons.guns_register ("zombies4test:uzi", {
   description = "UZI\n"..core.colorize("#fca800","Damage = 6\nBullet = 20 (Small Bullet)"),
   inventory_image= "uzi.png",
   bullet_name = "zombies4test:small_calibe_bullet",
   bullet_amount = 20,
   max_shot  = 21 ,
   sound_guns = "shot"
  
})

zweapons.bullet_register("zombies4test:small_calibe_bullet", {
    description = "Small Bullet",
    inventory_image = "bullet_small_guns.png",
    damage = 6, 
})

--- PYTHON :
zweapons.guns_register ("zombies4test:colt_python", {
   description = "Colt Python\n"..core.colorize("#fca800","Damage = 10\nBullet = 6 (Colt Python Bullet)"),
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
   description = "Fnscar\n"..core.colorize("#fca800","Damage = 15\nBullet = 1 (Fnscar Cartridge)"),
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
   description = "Model1887\n"..core.colorize("#fca800","Damage = 20\nBullet = 6 (Model1887 Bullet)"),
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
   description = "Remington870\n"..core.colorize("#fca800","Damage = 20\nBullet = 4 (Remington870 Bullet)"),
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
   description = "Sawed Off Shotgun\n"..core.colorize("#fca800","Damage = 25\nBullet = 2 (Sawed Off Shotgun Bullet)"),
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
