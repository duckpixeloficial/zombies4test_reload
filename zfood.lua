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

core.register_craftitem("zombies4test:canned_sardines", {
    description = "Canned Sardines",
    inventory_image = "canned_sardines.png",
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

--- DONUT :
core.register_craftitem("zombies4test:donut", {
    description = "Donut",
    inventory_image = "donut.png",
    _rp_hunger_food = 5,
    _rp_hunger_sat = 5, 
    on_use = core.item_eat(5)
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

--- SUPORTE A HUNGER NG : ===============================================
if minetest.get_modpath("hunger_ng") ~= nil then
hunger_ng.add_hunger_data('zombies4test:canned_tomato', {
 satiates = 5.0,
})

hunger_ng.add_hunger_data('zombies4test:canned_beans', {
 satiates = 5.0,
})

hunger_ng.add_hunger_data('zombies4test:canned_sardines', {
 satiates = 5.0,
})

hunger_ng.add_hunger_data('zombies4test:chips', {
 satiates = 7.0,
})

hunger_ng.add_hunger_data('zombies4test:donut', {
 satiates = 5.0,
})

hunger_ng.add_hunger_data('zombies4test:candy', {
 satiates = 3.0,
})

hunger_ng.add_hunger_data('zombies4test:chocolate_bar', {
 satiates = 3.0,
})

hunger_ng.add_hunger_data('zombies4test:soda', {
 satiates = 3.0,
})
end



