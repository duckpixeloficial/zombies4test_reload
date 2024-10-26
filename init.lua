local path = core.get_modpath("zombies4test")


zweapons = {}
zombies4test = {}

-- Referencia do dmobs :)
zombies4test.zombies = core.settings:get_bool("zombies4test.zombies", true)
zombies4test.tank = core.settings:get_bool("zombies4test.tank", true)
zombies4test.structures = core.settings:get_bool("zombies4test.structures", true)

-- INICIAL ITENS : ====================================
dofile(path .. "/zstarting_items.lua")


-- STRUCTURES : =======================================

if zombies4test.structures then 

dofile(path .. "/zstructures.lua")

end

-- ZOMBIES ============================================
dofile(path.."/zombies/zfunctions.lua")
dofile(path.."/zombies/crawlerzombie.lua")
dofile(path.."/zombies/doctorzombie.lua")
dofile(path.."/zombies/lumberjackzombie.lua")
dofile(path.."/zombies/minerzombie.lua")
dofile(path.."/zombies/runner.lua")
dofile(path.."/zombies/spitterzombie.lua")
dofile(path.."/zombies/survivorzombie.lua")
dofile(path.."/zombies/tankzombie.lua")
dofile(path.."/zombies/walkingzombie.lua")
dofile(path.."/zombies/clown_zombie.lua")

if zombies4test.zombies then 

dofile(path.."/zombies/zspawn.lua")

end


if zombies4test.tank then 

dofile(path.."/zombies/ztankspawn.lua")

end

-- WEAPONS : ========================================

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
dofile(path .. "/zloot.lua")

--  EVENTO :
dofile(path .. "/zevents.lua")


-- Recipe support for Repixture, made by : Darth_Tiktaalik

if core.get_modpath("rp_crafting") then 
   dofile(path .. "/zrecipes_repixture.lua")

else

   dofile(path .. "/zrecipes.lua")

end


--  Armor :

if core.get_modpath("3d_armor") then 
dofile(path .. "/zarmor_3d_armor.lua")
end


if core.get_modpath("mcl_armor") then 
dofile(path .. "/zarmor_mcl_armor.lua")
end

