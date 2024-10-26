#### Some simple weapons are added in the Zombies4test mod, they are still in testing and beta, but they are functional..
#### see the weapons below:

---

- Colt Python (Damage = 6)

- Fnscar (Damage = 15)

- Model1887 (Damage = 20)

- Remington870 (Damage = 20)

- Sawed Off Shotgun (Damage = 25)


" The damage is from the bullet used by the weapon, not necessarily the weapon itself."

---

#### You can also create your spropias weapons easily, how to do it?


1 - In the mods folder, create a folder with the name of your weapons :

2 - Inside your weapons folder, create two files " init.lua " and " mod.conf "

3 -  In the mod.conf file, put:


name = your_mod_name

depends = zombies4test



4 - Now inside the "init.lua" file, you create your weapons, see how simple it is:

    zweapons.guns_register ("your_mod_name:weapon_name", {

    description = "My Weapon ",

    inventory_image = "my_weapon.png",

    bullet_name = "your_mod_name:guns_bullet_name",

     bullet_amount = 6,  

    max_shot  = 7,

    sound_guns = "shot"
  
    })


5 - You will need to create the projectiles, or bullets for your weapons, remembering that you need to add to your weapon, what type of bullet it will shoot.

    zweapons.bullet_register("your_mod_name:guns_bullet_name", {

    description = "Bullet Name",

    inventory_image = "bullet.png",

    damage = 10, 
    })


