local path = minetest.get_modpath("zombies4test")


zweapons = {}

-- INICIAL ITENS : ====================================
dofile(path .. "/starting_items.lua")


-- STRUCTURES :
dofile(path .. "/structures.lua")

-- ZOMBIES ============================================
dofile(path.."/zombies/functions.lua")
dofile(path.."/zombies/crawlerzombie.lua")
dofile(path.."/zombies/doctorzombie.lua")
dofile(path.."/zombies/lumberjackzombie.lua")
dofile(path.."/zombies/minerzombie.lua")
dofile(path.."/zombies/runner.lua")
dofile(path.."/zombies/spitterzombie.lua")
dofile(path.."/zombies/survivorzombie.lua")
dofile(path.."/zombies/tankzombie.lua")
dofile(path.."/zombies/walkingzombie.lua")
dofile(path.."/zombies/zspawn.lua")


dofile(path.."/weapons/guns.lua")
dofile(path.."/weapons/projectile.lua")
dofile(path.."/weapons/guns_registers_crafts.lua")


-- NODES : ==========================================
dofile(path .. "/znodes.lua")
dofile(path .. "/zfood.lua")
dofile(path .. "/ztools.lua")
dofile(path .. "/zitems.lua")
dofile(path .. "/zdeco.lua")
dofile(path .. "/zfortification.lua")
dofile(path .. "/ztrader.lua")
dofile(path .. "/loot.lua")

--  EVENTO :
dofile(path .. "/events.lua")


-- MATERIALS :
-- dofile(path .. "/zrecipes.lua")


-- Recipe support for Repixture, made by : Darth_Tiktaalik

if minetest.get_modpath("rp_crafting") then 
   dofile(path .. "/zrecipes_repixture.lua")

else

   dofile(path .. "/zrecipes.lua")

end





--[[

if minetest.registered_nodes["nyancat:nyancat_rainbow"] then
	dofile(path .. "/rainbow_staff.lua") ; print ("NYAN!!!!!")
end

if minetest.get_modpath("3d_armor") then
	dofile(path .. "/nssm_armor.lua")
end

]]
