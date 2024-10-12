
-- SURVIVOR : ==================================================================
armor:register_armor("zombies4test:hat_head", {
    description = "Hat",
    inventory_image = "inv_hat.png",
    groups = {armor_head=1, armor_heal=6, armor_use=300,
        physics_speed=-0.02, physics_gravity=0.02},
    armor_groups = {fleshy=10},
    damage_groups = {cracky=1, snappy=2, choppy=2, crumbly=3, level=2},
})

armor:register_armor("zombies4test:Jacket_torso", {
    description = "Jacket",
    inventory_image = "inv_Jacket.png",
    groups = {armor_torso=1, armor_heal=6, armor_use=300,
        physics_speed=-0.05, physics_gravity=0.05},
    armor_groups = {fleshy=15},
    damage_groups = {cracky=1, snappy=2, choppy=2, crumbly=3, level=2},
})


armor:register_armor("zombies4test:jeanspants_legs", {
    description = "jeans pants",
    inventory_image = "inv_jeanspants.png",
    groups = {armor_legs=1, armor_heal=6, armor_use=300,
        physics_speed=-0.04, physics_gravity=0.04},
    armor_groups = {fleshy=15},
    damage_groups = {cracky=1, snappy=2, choppy=2, crumbly=3, level=2},
})


armor:register_armor("zombies4test:tennis_feet", {
    description = "Tennis",
    inventory_image = "inv_tennis.png",
    groups = {armor_feet=1, armor_heal=6, armor_use=300,
        physics_speed=-0.02, physics_gravity=0.02},
    armor_groups = {fleshy=10},
    damage_groups = {cracky=1, snappy=2, choppy=2, crumbly=3, level=2},
})




-- MILITARY : =====================================================================

armor:register_armor("zombies4test:helmet_military", {
        description = "Military Helmet",
        inventory_image = "zombies4test_helmet_military_inv.png",
        groups = {armor_head=1, armor_heal=6, armor_use=300,
            physics_speed=-0.02, physics_gravity=0.02},
        armor_groups = {fleshy=10},
        damage_groups = {cracky=1, snappy=2, choppy=2, crumbly=3, level=2},
    })

armor:register_armor("zombies4test:chestplate_military", {
        description = "Military Chestplate",
        inventory_image = "zombies4test_chestplate_military_inv.png",
        groups = {armor_torso=1, armor_heal=6, armor_use=300,
            physics_speed=-0.05, physics_gravity=0.05},
        armor_groups = {fleshy=15},
        damage_groups = {cracky=1, snappy=2, choppy=2, crumbly=3, level=2},
    })

armor:register_armor("zombies4test:leggings_military", {
        description = "Military Leggings",
        inventory_image = "zombies4test_leggings_military_inv.png",
        groups = {armor_legs=1, armor_heal=6, armor_use=300,
            physics_speed=-0.04, physics_gravity=0.04},
        armor_groups = {fleshy=15},
        damage_groups = {cracky=1, snappy=2, choppy=2, crumbly=3, level=2},
    })


armor:register_armor("zombies4test:boots_military", {
        description = "Military Boots",
        inventory_image = "zombies4test_boots_military_inv.png",
        groups = {armor_feet=1, armor_heal=6, armor_use=300,
            physics_speed=0.3, physics_gravity=0.02},
        armor_groups = {fleshy=10},
        damage_groups = {cracky=1, snappy=2, choppy=2, crumbly=3, level=2},
    })


--[[

   minetest.register_craft({
    type = "shaped",
    output = "zombies4test:helmet_military 1",
    recipe = {
        {"default:gold_ingot","dye:dark_green","default:gold_ingot"},
        {"default:gold_ingot","","default:gold_ingot"},
        {"","",""}
    }
})


   minetest.register_craft({
    type = "shaped",
    output = "zombies4test:chestplate_military 1",
    recipe = {
        {"default:gold_ingot","","default:gold_ingot"},
        {"default:gold_ingot","dye:dark_green","default:gold_ingot"},
        {"default:gold_ingot","default:gold_ingot","default:gold_ingot"}
    }
})


   minetest.register_craft({
    type = "shaped",
    output = "zombies4test:leggings_military 1",
    recipe = {
        {"default:gold_ingot","dye:dark_green","default:gold_ingot"},
        {"default:gold_ingot","","default:gold_ingot"},
        {"default:gold_ingot","","default:gold_ingot"}
    }
})


 minetest.register_craft({
    type = "shaped",
    output = "zombies4test:boots_military 1",
    recipe = {
        {"default:gold_ingot","","default:gold_ingot"},
        {"dye:brown","","dye:brown"},
        {"","",""}
    }
})


]]

-- JUGGERNAUT : =========================================================

armor:register_armor("zombies4test:helmet_Juggernaut", {
        description = "Juggernaut Helmet",
        inventory_image = "inv_helmet_Juggernaut.png",
        groups = {armor_head=1, armor_heal=13, armor_use=66},
        armor_groups = {fleshy=16},
        damage_groups = {cracky=2, snappy=1, level=3},
    })


    armor:register_armor("zombies4test:chestplate_Juggernaut", {
        description = "Juggernaut Chestplate",
        inventory_image = "inv_chestplate_Juggernaut.png",
        groups = {armor_torso=1, armor_heal=13, armor_use=66},
        armor_groups = {fleshy=21},
        damage_groups = {cracky=2, snappy=1, level=3},
    })


    armor:register_armor("zombies4test:leggings_Juggernaut", {
        description = "Juggernaut Leggings",
        inventory_image = "inv_leggings_Juggernaut.png",
        groups = {armor_legs=1, armor_heal=13, armor_use=66},
        armor_groups = {fleshy=21},
        damage_groups = {cracky=2, snappy=1, level=3},
    })


    armor:register_armor("zombies4test:boots_Juggernaut", {
        description = "Juggernaut Boots",
        inventory_image = "inv_boots_Juggernaut.png",
        groups = {armor_feet=1, armor_heal=13, armor_use=66},
        armor_groups = {fleshy=16},
        damage_groups = {cracky=2, snappy=1, level=3},
    })



    armor:register_armor("zombies4test:shield_Juggernaut", {
        description = "Juggernaut Shield",
        inventory_image = "inv_shield_Juggernaut.png",
        groups = {armor_shield=1, armor_heal=13, armor_use=66},
        armor_groups = {fleshy=16},
        damage_groups = {cracky=2, snappy=1, level=3},
        reciprocate_damage = true,
       
    })



 --[[

   minetest.register_craft({
    type = "shaped",
    output = "zombies4test:helmet_Juggernaut 1",
    recipe = {
        {"default:diamond","dye:black","default:diamond"},
        {"default:diamond","","default:diamond"},
        {"","",""}
    }
})


   minetest.register_craft({
    type = "shaped",
    output = "zombies4test:chestplate_Juggernaut 1",
    recipe = {
        {"default:diamond","","default:diamond"},
        {"default:diamond","dye:black","default:diamond"},
        {"default:diamond","default:diamond","default:diamond"}
    }
})


   minetest.register_craft({
    type = "shaped",
    output = "zombies4test:leggings_Juggernaut 1",
    recipe = {
        {"default:diamond","dye:black","default:diamond"},
        {"default:diamond","","default:diamond"},
        {"default:diamond","","default:diamond"}
    }
})


 minetest.register_craft({
    type = "shaped",
    output = "zombies4test:boots_Juggernaut 1",
    recipe = {
        {"default:diamond","","default:diamond"},
        {"dye:black","","dye:black"},
        {"","",""}
    }
})



  minetest.register_craft({
    type = "shaped",
    output = "zombies4test:shield_Juggernaut 1",
    recipe = {
        {"default:diamond","default:diamond","default:diamond"},
        {"default:diamond","default:diamond","default:diamond"},
        {"","dye:black",""}
    }
})


]]


-- GAS MASK : =================================================================
armor:register_armor("zombies4test:gas_mask", {
        description = "Gas Mask",
        inventory_image = "gas_mask_inv.png",
        groups = {armor_head=1, armor_heal=0, armor_use=800,
            physics_speed=-0.01, physics_gravity=0.01},
        armor_groups = {fleshy=10},
        damage_groups = {cracky=2, snappy=3, choppy=2, crumbly=1, level=2},
    })

-- RABBIT MASK : ==================================================================
armor:register_armor("zombies4test:rabbit_mask", {
        description = "Rabbit Mask",
        inventory_image = "rabbit_mask_inv.png",
        groups = {armor_head=1, armor_heal=0, armor_use=800,
            physics_speed=-0.01, physics_gravity=0.01},
        armor_groups = {fleshy=10},
        damage_groups = {cracky=2, snappy=3, choppy=2, crumbly=1, level=2},
    })





