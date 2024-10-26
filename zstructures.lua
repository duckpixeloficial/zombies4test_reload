
local spawn_str = {"group:dirt","group:soil","group:snowy","hades_core:ash" ,"group:oxidized_stone"}
local spawn_stg_grav = {"group:dirt","group:soil","group:stone" ,"group:snowy"}


-- DECO HOME 1 :

    core.register_decoration({
        deco_type = "schematic",
        place_on = spawn_str,
        sidelen = 80, -- 16
        fill_ratio = 0.00008,
        flags = "place_center_x,place_center_z,force_placement,all_floors",
        y_max = 25,
        y_min = 0,
        schematic = core.get_modpath("zombies4test").."/schematics/home1.mts",
        rotation = "random",
    })

    -- TRADER  :

    core.register_decoration({
        deco_type = "schematic",
        place_on = spawn_str,
        sidelen = 80, -- 16
        fill_ratio = 0.00008,
        flags = "place_center_x,place_center_z,force_placement,all_floors",
        y_max = 10,
        y_min = 0,
        schematic = core.get_modpath("zombies4test").."/schematics/trader_home.mts",
        rotation = "random",
    })

    -- HOTEL  :
    core.register_decoration({
        deco_type = "schematic",
        place_on = spawn_str,
        sidelen = 80, -- 16
        fill_ratio = 0.00008,
        flags = "place_center_x,place_center_z,force_placement,all_floors",
        y_max = 15,
        y_min = 10,
        schematic = core.get_modpath("zombies4test").."/schematics/hotel.mts",
        rotation = "random",
    })


    -- HOSPITAL :

    core.register_decoration({
        deco_type = "schematic",
        place_on = spawn_str,
        sidelen = 80, -- 16
        fill_ratio = 0.00008,
        flags = "place_center_x,place_center_z,force_placement,all_floors",
        y_max = 7,
        y_min = 0,
        schematic = core.get_modpath("zombies4test").."/schematics/hospital.mts",
        rotation = "random",
    })




    core.register_decoration({
        deco_type = "simple",
        place_on = spawn_stg_grav,
        sidelen = 80,
        place_offset_y = 0,
        biomes = {"underground"},
        flags = "force_placement,all_floors",
        fill_ratio = 0.0002,
        y_max = 50,
        y_min = 0,
        decoration ="zombies4test:gravestone",
    })







