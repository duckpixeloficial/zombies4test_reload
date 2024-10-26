--- CANNED :

core.register_craftitem("zombies4test:canned_tomato", {
    description = " Canned Tomato",
    inventory_image = "canned_tomato.png",
    _rp_hunger_food = 5,
    _rp_hunger_sat = 5,
    on_use = core.item_eat(5)
})


core.register_craftitem("zombies4test:canned_beans", {
    description = "Canned Beans",
    inventory_image = "beans_canned.png",
    _rp_hunger_food = 5,
    _rp_hunger_sat = 5, 
    on_use = core.item_eat(5)
})


--- CHIPS :

core.register_craftitem("zombies4test:chips", {
    description = "Chips",
    inventory_image = "chips.png",
    _rp_hunger_food = 7,
    _rp_hunger_sat = 7, 
    on_use = core.item_eat(7)
})


--- CANDY :

core.register_craftitem("zombies4test:candy", {
    description = "Candy",
    inventory_image = "candy.png",
    _rp_hunger_food = 3,
    _rp_hunger_sat = 3, 
    on_use = core.item_eat(3)
})


core.register_craftitem("zombies4test:chocolate_bar", {
    description = "Chocolate Bar",
    inventory_image = "chocolate_bar.png",
    _rp_hunger_food = 3,
    _rp_hunger_sat = 3, 
    on_use = core.item_eat(3)
})



core.register_craftitem("zombies4test:soda", {
    description = "Soda",
    inventory_image = "zsoda.png",
    _rp_hunger_food = 3,
    _rp_hunger_sat = 3, 
    on_use = core.item_eat(3)
})
