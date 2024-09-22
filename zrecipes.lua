-- shaped
--[[

minetest.register_craft({
    type = "shaped",
    output = " ",  -- item que será criado
    recipe = {
        {" ", " ", " "},
        {" ", " ", " "},
        {" ", " ", " "}
    },
})

]]


-- shapeless
--[[

minetest.register_craft({
    type = "shapeless",
    output = " ",  -- item que será criado
    recipe = {
        " ",
        " ",
        " "
    },
})


]]


-- Groups
--[[

"group:stone"
"group:tree"
"group:wood"

]]




------- ITENS PADRÃO PARA CRAFTS : ====================================================================
---- Lata :
minetest.register_craft({
    type = "shapeless",
    output = "zombies4test:metal_can",  -- item que será criado
    recipe = {
       "zombies4test:canned_tomato"
       
    },
})


minetest.register_craft({
    type = "shapeless",
    output = "zombies4test:metal_can",  -- item que será criado
    recipe = {
       "zombies4test:canned_beans"
       
    },
})




---- Plastic :
minetest.register_craft({
    type = "shapeless",
    output = "zombies4test:plastic",  -- item que será criado
    recipe = {
       "group:tree",
       "group:tree",
       "group:tree",
       
    },
})




----- NODES : =========================================================================================
minetest.register_craft({   
    type = "shaped",
    output = "zombies4test:road 9",
    recipe = {
        {"group:stone","group:stone","group:stone"},
        {"group:stone","zombies4test:plastic","group:stone"},
        {"group:stone","group:stone","group:stone"}
    }
})

minetest.register_craft({   
    type = "shaped",
    output = "zombies4test:road2 12",
    recipe = {
        {"zombies4test:road","zombies4test:road","zombies4test:road"},
        {"zombies4test:road","zombies4test:road","zombies4test:road"},
        {"zombies4test:road","zombies4test:road","zombies4test:road"}
    }
})


minetest.register_craft({   
    type = "shaped",
    output = "zombies4test:road3 12",
    recipe = {
        {"zombies4test:road2","zombies4test:road2","zombies4test:road2"},
        {"zombies4test:road2","zombies4test:road2","zombies4test:road2"},
        {"zombies4test:road2","zombies4test:road2","zombies4test:road2"}
    }
})


minetest.register_craft({   
    type = "shaped",
    output = "zombies4test:roadstopline 12",
    recipe = {
        {"zombies4test:road","zombies4test:plastic","zombies4test:road"},
        {"zombies4test:road","zombies4test:plastic","zombies4test:road"},
        {"zombies4test:road","zombies4test:plastic","zombies4test:road"}
    }
})

minetest.register_craft({   
    --type = "shaped",
    output = "zombies4test:sidewalk 6",
    recipe = {
        {"zombies4test:plastic","zombies4test:plastic"},
        {"group:stone","group:stone"},
       
    }
})



minetest.register_craft({   ------ CRaFT
   -- type = "shaped",
    output = "zombies4test:trafficblock 5",
    recipe = {
        {"zombies4test:trafficcone","zombies4test:trafficcone","zombies4test:trafficcone"},      
        {"zombies4test:metal_can","","zombies4test:metal_can"}
    }
 })
 

--- FORTIFICATION : ===================================================================================
minetest.register_craft({   
    type = "shaped",
    output = "zombies4test:metal_wall 1",
    recipe = {
        {"zombies4test:metal_can","zombies4test:metal_can","zombies4test:metal_can"},
        {"zombies4test:metal_can","zombies4test:metal_can","zombies4test:metal_can"},
        {"zombies4test:metal_can","zombies4test:metal_can","zombies4test:metal_can"}
    }
})



minetest.register_craft({
    output = "zombies4test:barbed_wire 2",
    recipe = {
        {"","zombies4test:metal_can",""},
        {"zombies4test:metal_can","","zombies4test:metal_can"},
        {"","zombies4test:metal_can",""}
    }
})




minetest.register_craft({   
    type = "shaped",
    output = "zombies4test:grid 4",
    recipe = {
        {"zombies4test:barbed_wire","zombies4test:barbed_wire",""},
        {"zombies4test:barbed_wire","zombies4test:barbed_wire",""},
        {"","",""}
    }
})





minetest.register_craft({   ------ CRaFT
    type = "shaped",
    output = "zombies4test:sandbag",
    recipe = {
        {"group:sand","group:sand","group:sand"},
        {"group:sand","group:sand","group:sand"},
        {"group:sand","group:sand","group:sand"}
    }
})



minetest.register_craft({   ------ CRaFT
    type = "shaped",
    output = "zombies4test:wirefence 8",
    recipe = {
        {"zombies4test:metal_can","zombies4test:barbed_wire ","zombies4test:metal_can"},
        {"zombies4test:metal_can","zombies4test:barbed_wire ","zombies4test:metal_can"},
        {"","",""}
    }
})

minetest.register_craft({   ------ CRaFT
    --type = "shaped",
    output = "zombies4test:punji_sticks",
    recipe = {
       -- {"","",""},
       -- {"","",""},
        {"group:stick","group:stick","group:stick"}
    }
})






----- DECORAÇÃO : =====================================================================================
minetest.register_craft({   ------ CRaFT
    type = "shaped",
    output = "zombies4test:trafficpole 3",
    recipe = {
        {"","zombies4test:plastic",""},
        {"","zombies4test:plastic",""},
        {"","zombies4test:plastic",""}
    }
 })



minetest.register_craft({   ------ CRaFT
    type = "shaped",
    output = "zombies4test:trafficcone 1",
    recipe = {
        {"","",""},
        {"","zombies4test:trafficpole",""},
        {"zombies4test:trafficpole","zombies4test:trafficpole","zombies4test:trafficpole"}
    }
 })


minetest.register_craft({   ------ CRaFT
    type = "shaped",
    output = "zombies4test:shelving",
    recipe = {
        {"zombies4test:metal_can","","zombies4test:metal_can"},
        {"zombies4test:metal_can","zombies4test:metal_can","zombies4test:metal_can"},
        {"zombies4test:metal_can","","zombies4test:metal_can"}
    }
})


minetest.register_craft({   ------ CRaFT
    type = "shaped",
    output = "zombies4test:stopsign",
    recipe = {
        {"","zombies4test:metal_wall",""},
        {"","zombies4test:metal_can",""},
        {"","zombies4test:metal_can",""}
      }
})


minetest.register_craft({   ------ CRaFT
    type = "shaped",
    output = "zombies4test:trashcan",
    recipe = {
        {"zombies4test:metal_can","","zombies4test:metal_can"},
        {"zombies4test:metal_can","","zombies4test:metal_can"},
        {"zombies4test:metal_can","zombies4test:metal_can","zombies4test:metal_can"}
    }
         
})


minetest.register_craft({   ------ CRaFT
    type = "shaped",
    output = "zombies4test:radio",
    recipe = {
        {"","",""},
        {"","zombies4test:metal_can",""},
        {"","zombies4test:plastic",""}
    }
         
})


minetest.register_craft({   ------ CRaFT
    type = "shaped",
    output = "zombies4test:table",
    recipe = {
        {"group:wood","group:wood","group:wood"},
        {"group:wood","","group:wood"},
        {"group:wood","","group:wood"}
    }
         
})


minetest.register_craft({   ------ CRaFT
    type = "shaped",
    output = "zombies4test:computer",
    recipe = {
        {"zombies4test:metal_can","zombies4test:metal_can","zombies4test:metal_can"},
        {"zombies4test:metal_can","group:glass","zombies4test:metal_can"},
        {"","group:glass",""}
    }
         
})


minetest.register_craft({   ------ CRaFT
    type = "shaped",
    output = "zombies4test:armchair",
    recipe = {
        {"","","group:tree"},
        {"group:tree","group:tree","group:tree"},
        {"group:tree","","group:tree"}
    }
 })
 
 minetest.register_craft({   ------ CRaFT
    --type = "shaped",
    output = "zombies4test:vases",
    recipe = {
        {"","group:leaves",""},
        {"","group:soil",""},
        {"","",""}
    }
 })


