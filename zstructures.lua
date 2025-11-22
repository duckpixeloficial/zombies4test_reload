
local spawn_str = {"group:dirt","group:soil","group:snowy","hades_core:ash" ,"group:oxidized_stone"}
local spawn_stg_grav = {"group:dirt","group:soil","group:stone" ,"group:snowy"}

   
    core.register_decoration({
        deco_type = "schematic",
        place_on = spawn_str,
        sidelen = 80, -- 16
        fill_ratio = 0.00002,
        flags = "place_center_x,place_center_z,force_placement,all_floors",
        y_max = 10,
        y_min = 5,
        place_offset_y = -10,
        schematic = core.get_modpath("zombies4test").."/schematics/home1.mts",
        rotation = "random",
    })
    
    core.register_decoration({
        deco_type = "schematic",
        place_on = spawn_str,
        sidelen = 80, -- 16
        fill_ratio = 0.00001,
        flags = "place_center_x,place_center_z,force_placement,all_floors",
        y_max = 15,
        y_min = 10,
        place_offset_y = -10,
        schematic = core.get_modpath("zombies4test").."/schematics/home2.mts",
        rotation = "random",
    })
    
    -- TRADER  :
    core.register_decoration({
        deco_type = "schematic",
        place_on = spawn_str,
        sidelen = 80, -- 16
        fill_ratio = 0.00001,
        flags = "place_center_x,place_center_z,force_placement,all_floors",
        y_max = 15,
        y_min = 10,
        place_offset_y = -10,
        schematic = core.get_modpath("zombies4test").."/schematics/trader_home.mts",
        rotation = "random",
    })
    -- HOTEL  :
    core.register_decoration({
        deco_type = "schematic",
        place_on = spawn_str,
        sidelen = 80, -- 16
        fill_ratio = 0.00002,
        flags = "place_center_x,place_center_z,force_placement,all_floors",
        y_max = 20,
        y_min = 10,
        place_offset_y = -10,
        schematic = core.get_modpath("zombies4test").."/schematics/hotel.mts",
        rotation = "random",
    })
    -- HOSPITAL :
    core.register_decoration({
        deco_type = "schematic",
        place_on = spawn_str,
        sidelen = 80, -- 16
       fill_ratio = 0.00001,
        flags = "place_center_x,place_center_z,force_placement,all_floors",
        y_max = 10,
        y_min = 6,
        place_offset_y = -10,
        schematic = core.get_modpath("zombies4test").."/schematics/hospital.mts",
        rotation = "random",
    })
    
    -- BUS (Schematic By : Panos Lemon )
    core.register_decoration({
        deco_type = "schematic",
        place_on = spawn_str,
        sidelen = 80, -- 16
       fill_ratio = 0.00001,
        flags = "place_center_x,place_center_z,force_placement,all_floors",
        y_max = 10,
        y_min = 5,
        --place_offset_y = -10,
        schematic = core.get_modpath("zombies4test").."/schematics/buss.mts",
        rotation = "random",
    })
    
    core.register_decoration({
        deco_type = "schematic",
        place_on = spawn_str,
        sidelen = 80, -- 16
       fill_ratio = 0.00001,
        flags = "place_center_x,place_center_z,force_placement,all_floors",
        y_max = 15,
        y_min = 5,
        place_offset_y = -10,
        schematic = core.get_modpath("zombies4test").."/schematics/supermarket.mts",
        rotation = "random",
    })
    
    -- SCHOOL (Schematic By : Thunder1035 )
    core.register_decoration({
        deco_type = "schematic",
        place_on = spawn_str,
        sidelen = 80, -- 16
       fill_ratio = 0.00001,
        flags = "place_center_x,place_center_z,force_placement,all_floors",
        y_max = 10,
        y_min = 5,
        place_offset_y = -6,
        schematic = core.get_modpath("zombies4test").."/schematics/school.mts",
        rotation = "random",
    })
    
     core.register_decoration({
        deco_type = "schematic",
        place_on = {"mcl_core:dirt_with_grass","default:dirt_with_coniferous_litter"},
        sidelen = 80, -- 16
        fill_ratio = 0.00002,
        flags = "place_center_x,place_center_z,force_placement,all_floors",
        y_max = 10,
        y_min = 5,
        place_offset_y = -6,
        schematic = core.get_modpath("zombies4test").."/schematics/tower_forest.mts",
        rotation = "random",
    })

    core.register_decoration({
        deco_type = "simple",
        place_on = spawn_stg_grav,
        sidelen = 80,
        place_offset_y = -5,
        biomes = {"underground"},
        flags = "force_placement,all_floors",
        fill_ratio = 0.0002,
        y_max = 50,
        y_min = 0,
        decoration ="zombies4test:gravestone",
    })

