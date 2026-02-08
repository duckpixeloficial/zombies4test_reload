local goggles = {}

-- correção, erro em nome da armadura jugg
core.register_alias("zombies4test:helmet_Juggernaut","zombies4test:helmet_juggernaut")
core.register_alias("zombies4test:chestplate_Juggernaut","zombies4test:chestplate_juggernaut")
core.register_alias("zombies4test:leggings_Juggernaut","zombies4test:leggings_juggernaut")
core.register_alias("zombies4test:boots_Juggernaut","zombies4test:boots_juggernaut")

local function add_hud_goggles(player)
 local p_name = player:get_player_name()
 
 goggles[p_name] = player:hud_add({
  hud_elem_type = "image",
  position =  {x = 0,y = 0.5},
  offset = {x = 0,y = 0},
  text = "goggler_glass.png",
  scale = {x = 10,y = 10},
  alignment = {x = 1,y = 0}
 })

end

local function add_remove_goggles(player)
 local p_name = player:get_player_name()
 player:hud_remove(goggles[p_name])
end

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
        physics_speed=0.5, physics_gravity=0.02},
    armor_groups = {fleshy=10},
    damage_groups = {cracky=1, snappy=2, choppy=2, crumbly=3, level=2},
})

-- POLICE : =====================================================================
armor:register_armor("zombies4test:helmet_police", {
        description = "Police Helmet",
        inventory_image = "zombies4test_helmet_police_inv.png",
        groups = {armor_head=1, armor_heal=6, armor_use=300,
            physics_speed=-0.02, physics_gravity=0.02},
        armor_groups = {fleshy=10},
        damage_groups = {cracky=1, snappy=2, choppy=2, crumbly=3, level=2},
    })

armor:register_armor("zombies4test:chestplate_police", {
        description = "Police Chestplate",
        inventory_image = "zombies4test_chestplate_police_inv.png",
        groups = {armor_torso=1, armor_heal=6, armor_use=300,
            physics_speed=-0.05, physics_gravity=0.05},
        armor_groups = {fleshy=15},
        damage_groups = {cracky=1, snappy=2, choppy=2, crumbly=3, level=2},
    })

armor:register_armor("zombies4test:leggings_police", {
        description = "Police Leggings",
        inventory_image = "zombies4test_leggings_police_inv.png",
        groups = {armor_legs=1, armor_heal=6, armor_use=300,
            physics_speed=-0.04, physics_gravity=0.04},
        armor_groups = {fleshy=15},
        damage_groups = {cracky=1, snappy=2, choppy=2, crumbly=3, level=2},
    })


armor:register_armor("zombies4test:boots_police", {
        description = "Police Boots",
        inventory_image = "zombies4test_boots_police_inv.png",
        groups = {armor_feet=1, armor_heal=6, armor_use=300,
            physics_speed=0.4, physics_gravity=0.02},
        armor_groups = {fleshy=10},
        damage_groups = {cracky=1, snappy=2, choppy=2, crumbly=3, level=2},
    })
    
-- MILITARY : =====================================================================
armor:register_armor("zombies4test:helmet_military", {
        description = "Military Helmet",
        inventory_image = "zombies4test_helmet_military_inv.png",
        groups = {armor_head=1, armor_heal=6, armor_use=300,
            physics_speed=-0.02, physics_gravity=0.02},
        armor_groups = {fleshy=11},
        damage_groups = {cracky=1, snappy=2, choppy=2, crumbly=3, level=2},
    })

armor:register_armor("zombies4test:chestplate_military", {
        description = "Military Chestplate",
        inventory_image = "zombies4test_chestplate_military_inv.png",
        groups = {armor_torso=1, armor_heal=6, armor_use=300,
            physics_speed=-0.05, physics_gravity=0.05},
        armor_groups = {fleshy=16},
        damage_groups = {cracky=1, snappy=2, choppy=2, crumbly=3, level=2},
    })

armor:register_armor("zombies4test:leggings_military", {
        description = "Military Leggings",
        inventory_image = "zombies4test_leggings_military_inv.png",
        groups = {armor_legs=1, armor_heal=6, armor_use=300,
            physics_speed=0.2, physics_gravity=0.04},
        armor_groups = {fleshy=16},
        damage_groups = {cracky=1, snappy=2, choppy=2, crumbly=3, level=2},
    })


armor:register_armor("zombies4test:boots_military", {
        description = "Military Boots",
        inventory_image = "zombies4test_boots_military_inv.png",
        groups = {armor_feet=1, armor_heal=6, armor_use=300,
            physics_speed=0.3, physics_gravity=0.02},
        armor_groups = {fleshy=11},
        damage_groups = {cracky=1, snappy=2, choppy=2, crumbly=3, level=2},
    })

-- JUGGERNAUT : =========================================================
armor:register_armor("zombies4test:helmet_juggernaut", {
        description = "Juggernaut Helmet",
        inventory_image = "inv_helmet_Juggernaut.png",
        groups = {armor_head=1, armor_heal=13, armor_use=66},
        armor_groups = {fleshy=16},
        damage_groups = {cracky=2, snappy=1, level=3},
    })


    armor:register_armor("zombies4test:chestplate_juggernaut", {
        description = "Juggernaut Chestplate",
        inventory_image = "inv_chestplate_Juggernaut.png",
        groups = {armor_torso=1, armor_heal=13, armor_use=66},
        armor_groups = {fleshy=21},
        damage_groups = {cracky=2, snappy=1, level=3},
    })


    armor:register_armor("zombies4test:leggings_juggernaut", {
        description = "Juggernaut Leggings",
        inventory_image = "inv_leggings_Juggernaut.png",
        groups = {armor_legs=1, armor_heal=13, armor_use=66},
        armor_groups = {fleshy=21},
        damage_groups = {cracky=2, snappy=1, level=3},
    })

    armor:register_armor("zombies4test:boots_juggernaut", {
        description = "Juggernaut Boots",
        inventory_image = "inv_boots_Juggernaut.png",
        groups = {armor_feet=1, armor_heal=13, armor_use=66,physics_speed=0.2},
        armor_groups = {fleshy=16},
        damage_groups = {cracky=2, snappy=1, level=3},
    })
    
--[[
    armor:register_armor("zombies4test:shield_juggernaut", {
        description = "Juggernaut Shield",
        inventory_image = "inv_shield_Juggernaut.png",
        groups = {armor_shield=1, armor_heal=13, armor_use=66},
        armor_groups = {fleshy=16},
        damage_groups = {cracky=2, snappy=1, level=3},
        reciprocate_damage = true,
       
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

-- RABBIT MASK : =============================================================
armor:register_armor("zombies4test:rabbit_mask", {
        description = "Rabbit Mask",
        inventory_image = "rabbit_mask_inv.png",
        groups = {armor_head=1, armor_heal=0, armor_use=800,
            physics_speed=-0.01, physics_gravity=0.01},
        armor_groups = {fleshy=10},
        damage_groups = {cracky=2, snappy=3, choppy=2, crumbly=1, level=2},
    })
    
-- JASON MASK : ============================================================
armor:register_armor("zombies4test:jason_mask", {
        description = "jason Mask",
        inventory_image = "jason_mask_inv.png",
        groups = {armor_head=1, armor_heal=0, armor_use=800,
            physics_speed=-0.03, physics_gravity=0.01},
        armor_groups = {fleshy=11},
        damage_groups = {cracky=2, snappy=3, choppy=2, crumbly=1, level=2},
    })

-- NEW ARMORS 0.55
 armor:register_armor("zombies4test:chestplate_dressshirt", {
        description = "Dressshirt Chestplate",
        inventory_image = "zombies4test_inv_chestplate_dressshirt.png",
        groups = {armor_torso=1, armor_heal=13, armor_use=66},
        armor_groups = {fleshy=10},
        damage_groups = {cracky=2, snappy=1, level=3},
    })
    
     armor:register_armor("zombies4test:chestplate_jacketpink", {
        description = "Jacketpink Chestplate",
        inventory_image = "zombies4test_inv_chestplate_jacketpink.png",
        groups = {armor_torso=1, armor_heal=13, armor_use=200},
        armor_groups = {fleshy=15},
        damage_groups = {cracky=2, snappy=1, level=3},
    })
    
    armor:register_armor("zombies4test:chicken_hat", {
        description = "Chicken Hat",
        inventory_image = "zombies4test_inv_helmet_chicken_hat.png",
        groups = {armor_head=1, armor_heal=0, armor_use=800,
            physics_speed=-0.03, physics_gravity=0.01},
        armor_groups = {fleshy=12},
        damage_groups = {cracky=2, snappy=3, choppy=2, crumbly=1, level=2},
    })
        
-- Night Vision MASK : ==========================================================
armor:register_armor("zombies4test:helmet_nvg", {
        description = "Night Vision Goggles",
        inventory_image = "helmet_nvg_inv.png",
        groups = {armor_head=1, armor_heal=0, armor_use=800,
            physics_speed=-0.03, physics_gravity=0.01},
        armor_groups = {fleshy=11},
        damage_groups = {cracky=2, snappy=3, choppy=2, crumbly=1, level=2},
        
        on_equip = function(player)
         add_hud_goggles(player)
         player:override_day_night_ratio(1)
        end,
        
        on_unequip = function(player)
         add_remove_goggles(player)
         player:override_day_night_ratio(nil)
        end,
        
        on_destroy = function(player)
         add_remove_goggles(player)
         player:override_day_night_ratio(nil)
        end
 })   
    
    
