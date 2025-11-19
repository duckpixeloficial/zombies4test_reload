
------- ITENS PADRÃO PARA CRAFTS : ====================================================================
---- Lata :
core.register_craft({
    type = "shapeless",
    output = "zombies4test:metal_can",  -- item que será criado
    recipe = {
       "zombies4test:canned_tomato"
       
    },
})

core.register_craft({
    type = "shapeless",
    output = "zombies4test:metal_can",  -- item que será criado
    recipe = {
       "zombies4test:canned_beans"
       
    },
})


---- Plastic :
core.register_craft({
    type = "shapeless",
    output = "zombies4test:plastic",  -- item que será criado
    recipe = {
       "group:tree",
       "group:tree",
       "group:tree",
       
    },
})


core.register_craft({   
    output = "zombies4test:sidewalk 6",
    recipe = {
        {"zombies4test:plastic","zombies4test:plastic"},
        {"group:stone","group:stone"},
       
    }
})


--- FORTIFICATION : ===================================================================================
core.register_craft({   
    type = "shaped",
    output = "zombies4test:metal_wall 1",
    recipe = {
        {"zombies4test:metal_can","zombies4test:metal_can","zombies4test:metal_can"},
        {"zombies4test:metal_can","zombies4test:metal_can","zombies4test:metal_can"},
        {"zombies4test:metal_can","zombies4test:metal_can","zombies4test:metal_can"}
    }
})



core.register_craft({
    output = "zombies4test:barbed_wire 2",
    recipe = {
        {"","zombies4test:metal_can",""},
        {"zombies4test:metal_can","","zombies4test:metal_can"},
        {"","zombies4test:metal_can",""}
    }
})




core.register_craft({   
    type = "shaped",
    output = "zombies4test:grid 4",
    recipe = {
        {"zombies4test:barbed_wire","zombies4test:barbed_wire",""},
        {"zombies4test:barbed_wire","zombies4test:barbed_wire",""},
        {"","",""}
    }
})





core.register_craft({ 
    type = "shaped",
    output = "zombies4test:sandbag",
    recipe = {
        {"group:sand","group:sand","group:sand"},
        {"group:sand","group:sand","group:sand"},
        {"group:sand","group:sand","group:sand"}
    }
})



core.register_craft({  
    type = "shaped",
    output = "zombies4test:wirefence 8",
    recipe = {
        {"zombies4test:metal_can","zombies4test:barbed_wire ","zombies4test:metal_can"},
        {"zombies4test:metal_can","zombies4test:barbed_wire ","zombies4test:metal_can"},
        {"","",""}
    }
})

core.register_craft({   
    output = "zombies4test:punji_sticks",
    recipe = {
        {"group:stick","group:stick","group:stick"}
    }
})

core.register_craft({   
    type = "shaped",
    output = "zombies4test:planks_barricade 4",
    recipe = {
        {"group:wood","","group:wood"},
        {"","group:wood",""},
        {"group:wood","","group:wood"}
    }
})
----- DECORAÇÃO : =====================================================================================
core.register_craft({   ------ CRaFT
    type = "shaped",
    output = "zombies4test:shelving",
    recipe = {
        {"zombies4test:metal_can","","zombies4test:metal_can"},
        {"zombies4test:metal_can","zombies4test:metal_can","zombies4test:metal_can"},
        {"zombies4test:metal_can","","zombies4test:metal_can"}
    }
})




core.register_craft({   ------ CRaFT
    type = "shaped",
    output = "zombies4test:trashcan",
    recipe = {
        {"zombies4test:metal_can","","zombies4test:metal_can"},
        {"zombies4test:metal_can","","zombies4test:metal_can"},
        {"zombies4test:metal_can","zombies4test:metal_can","zombies4test:metal_can"}
    }
         
})


core.register_craft({   ------ CRaFT
    type = "shaped",
    output = "zombies4test:radio",
    recipe = {
        {"","",""},
        {"","zombies4test:metal_can",""},
        {"","zombies4test:plastic",""}
    }
         
})


core.register_craft({   ------ CRaFT
    type = "shaped",
    output = "zombies4test:table",
    recipe = {
        {"group:wood","group:wood","group:wood"},
        {"group:wood","","group:wood"},
        {"group:wood","","group:wood"}
    }
         
})


core.register_craft({   ------ CRaFT
    type = "shaped",
    output = "zombies4test:computer",
    recipe = {
        {"zombies4test:metal_can","zombies4test:metal_can","zombies4test:metal_can"},
        {"zombies4test:metal_can","group:glass","zombies4test:metal_can"},
        {"","group:glass",""}
    }
         
})


core.register_craft({   ------ CRaFT
    type = "shaped",
    output = "zombies4test:armchair",
    recipe = {
        {"","","group:tree"},
        {"group:tree","group:tree","group:tree"},
        {"group:tree","","group:tree"}
    }
 })
 
 core.register_craft({   ------ CRaFT
    --type = "shaped",
    output = "zombies4test:vases",
    recipe = {
        {"","group:leaves",""},
        {"","group:soil",""},
        {"","",""}
    }
 })


