--- CANNED :

minetest.register_craftitem("zombies4test:canned_tomato", {
    description = " Canned Tomato",
    inventory_image = "canned_tomato.png",
    on_use = minetest.item_eat(5)
})


minetest.register_craftitem("zombies4test:canned_beans", {
    description = "Canned Beans",
    inventory_image = "beans_canned.png", 
    on_use = minetest.item_eat(5)
})


--- CHIPS :

minetest.register_craftitem("zombies4test:chips", {
    description = "Chips",
    inventory_image = "chips.png", 
    on_use = minetest.item_eat(7)
})


--- CANDY :

minetest.register_craftitem("zombies4test:candy", {
    description = "Candy",
    inventory_image = "candy.png", 
    on_use = minetest.item_eat(3)
})


minetest.register_craftitem("zombies4test:chocolate_bar", {
    description = "Chocolate Bar",
    inventory_image = "chocolate_bar.png", 
    on_use = minetest.item_eat(3)
})



minetest.register_craftitem("zombies4test:soda", {
    description = "Soda",
    inventory_image = "zsoda.png", 
    on_use = minetest.item_eat(3)
})
