core.register_tool("zombies4test:zpick", {
    description = "Z Pick",
    inventory_image = "zpick.png",
    tool_capabilities = {
        full_punch_interval = 1.0,
        max_drop_level = 0,
        groupcaps = {
            znodes = {times = {[1] = 0.1}, uses = 0, maxlevel = 1},
        },
        damage_groups = {fleshy = 1},
    },
})

---- Z STONES : ===================================================================================
local function zstones(zstonename,zstonedesc,zstonetexture)
core.register_node(zstonename, {
    description = zstonedesc,
    tiles = {zstonetexture},
    drop = zstonename,
    groups = {znodes = 1},
    _mcl_blast_resistance = 3600000,
    _mcl_hardness = 5,
    sounds = {footstep = {name = "stone_step",gain = 0.5,max_hear_distance = 3}},      
})
end

zstones("zombies4test:whiteblock","Z White Block","white_block.png")
zstones("zombies4test:whiteblock_spawn","Z White Block Spawn","white_block.png")
zstones("zombies4test:whiteblock_dirty","Z White Block dirty","white_block_dirty.png")
zstones("zombies4test:greenblock","Z Green Block","green_node.png")
zstones("zombies4test:redblock","Z Red Block","red_node.png")
zstones("zombies4test:grayblock","Z Gray Block","gray_node.png")
zstones("zombies4test:yellow_block","Z Yellow Block","yellow_block.png")
zstones("zombies4test:black_block","Z Black Block","black_node.png")
zstones("zombies4test:medicaltentblock","Z Medical Tent Block","medical_tent_block.png") 
zstones("zombies4test:zstone_brick","Z Stone Brick","zstone_brick.png") 
zstones("zombies4test:zstone_block","Z Stone Block","zstone_block.png") 

---- SIDEWALK
zstones("zombies4test:sidewalk","Z Sidewalk","sidewalk.png") 
---- BRICKs :
zstones("zombies4test:brick_motel","Z Brick Hotel","brick_motel.png") 
zstones("zombies4test:brick_homes","Z Brick Homes","default_brick.png") 
---- FLOOR BLOCK :
zstones("zombies4test:floor_block","Z Floor Block","floor_block.png") 

---- WOOD BLOCKS : ================================================================================
local function zwoods(zwoodsname,zwoodsdesc,zwoodstexture)
core.register_node(zwoodsname, {
    description = zwoodsdesc,
    tiles = {zwoodstexture},
    drop = zwoodsname,
    groups = {znodes = 1},
    _mcl_blast_resistance = 3600000,
    _mcl_hardness = 5,
    sounds = {footstep = {name = "wood_steep", gain = 0.5,max_hear_distance = 3}},      
})
end

zwoods("zombies4test:wood_cabin","Z Wood Cabin","wood_cabin.png")
zwoods("zombies4test:wood_cabin_2","Z Wood Cabin 2","wood_cabin_2.png")
zwoods("zombies4test:wood_cabin3","Z Wood Cabin 3","wood_cabin3.png")


-- STRIS WOOD ===================================================================================
local function zstairs_wood(zstairsname,zstairsdesc,zstairstexture)
core.register_node(zstairsname, {
    description = zstairsdesc,
    tiles = {zstairstexture},
    drawtype = "nodebox",
    paramtype = "light",
    paramtype2 = "facedir",
    groups = {znodes = 1},
    _mcl_blast_resistance = 3600000,
    _mcl_hardness = 5,
    drop = zstairsname,
    sounds = {footstep = {name = "wood_steep", gain = 0.5,max_hear_distance = 3}},     
    node_box = {
        type = "fixed",
        fixed = {
            {-0.5, -0.5, -0.5, 0.5, 0, 0.5},
            {-0.5, 0, 0, 0.5, 0.5, 0.5},
        },
    },
    
       on_place = core.rotate_node,
})
end

zstairs_wood("zombies4test:stair_wood_cabin","Z Stair Wood Cabin","wood_cabin.png")
zstairs_wood("zombies4test:stair_wood_cabin_2","Z Stair Wood Cabin 2","wood_cabin_2.png")

-- STRIS WOOD =================================================================================
local function zstairs_stone(zstairsname_stone,zstairsdesc_stone,zstairstexture_stone)
core.register_node(zstairsname_stone, {
    description = zstairsdesc_stone,
    tiles = {zstairstexture_stone},
    drawtype = "nodebox",
    paramtype = "light",
    paramtype2 = "facedir",
    groups = {znodes = 1},
    drop = zstairsname_stone,
    _mcl_blast_resistance = 3600000,
    _mcl_hardness = 5,
    sounds = {footstep = {name = "stone_step", gain = 0.5,max_hear_distance = 3}},     
    node_box = {
        type = "fixed",
        fixed = {
            {-0.5, -0.5, -0.5, 0.5, 0, 0.5},
            {-0.5, 0, 0, 0.5, 0.5, 0.5},
        },
    },
    
       on_place = core.rotate_node,
})
end

zstairs_stone("zombies4test:zgray_stair","Z Gray Stair","gray_node.png")
zstairs_stone("zombies4test:zgreen_stair","Z Green Stair","medical_tent_block.png")
zstairs_stone("zombies4test:yellow_stair","Z Yellow Stair","yellow_block.png")
zstairs_stone("zombies4test:zred_stair","Z Red Stair","red_node.png")
zstairs_stone("zombies4test:sidewalk_stair","Z sidewalk Stair","sidewalk.png")
zstairs_stone("zombies4test:whiteblock_stair","Z White Block Stair","white_block.png")
zstairs_stone("zombies4test:zstone_brick_stair","Z Stone Brick Stair","zstone_brick.png")

-- FENCE :===================================================================================
local function zfences_register(name_fences,zdesc_fences,zfence_textures)
core.register_node(name_fences, {
                description = zdesc_fences,
                paramtype = "light",
		drawtype = "nodebox",
		connects_to = {"group:fence","group:wood","group:stone","group:znodes","group:tree","group:wall","zombies4test:wood_fence_z1"},
		tiles = {zfence_textures},
		sunlight_propagates = true,
		is_ground_content = false,
		groups = {znodes = 1},
		_mcl_blast_resistance = 3600000,
                _mcl_hardness = 5,
		node_box = {
			type = "connected",
			fixed = {-1/8, -1/2, -1/8, 1/8, 1/2, 1/8},

			connect_front = {{-1/16,  3/16, -1/2,   1/16,  5/16, -1/8 },
				         {-1/16, -5/16, -1/2,   1/16, -3/16, -1/8 }},
			connect_left =  {{-1/2,   3/16, -1/16, -1/8,   5/16,  1/16},
				         {-1/2,  -5/16, -1/16, -1/8,  -3/16,  1/16}},
			connect_back =  {{-1/16,  3/16,  1/8,   1/16,  5/16,  1/2 },
				         {-1/16, -5/16,  1/8,   1/16, -3/16,  1/2 }},
			connect_right = {{ 1/8,   3/16, -1/16,  1/2,   5/16,  1/16},
				         { 1/8,  -5/16, -1/16,  1/2,  -3/16,  1/16}}
		},		
})
end

zfences_register("zombies4test:wood_fence_z1","Wood fence Z","wood_cabin.png")
zfences_register("zombies4test:wood_fence_z2","Wood fence Z 2","wood_cabin_2.png")

-- OUTROS : ================================================================================
core.register_node("zombies4test:zfake_dirt", {
	description = "Z Fake Dirt",
	tiles = {"default_dirt.png"},
	paramtype2 = "facedir",
	groups = {crumbly = 3},
	_mcl_hardness = 0.6,
        drop = "zombies4test:zfake_dirt",        	
})

core.register_node("zombies4test:wood_cabin_tspawn", {
	description = "Wood Cabin Spawn",
	tiles = {"wood_cabin3.png"},
	paramtype2 = "facedir",
	groups = {znodes = 1},
	_mcl_blast_resistance = 3600000,
        _mcl_hardness = 5,
        drop = "zombies4test:wood_cabin_tspawn",
        --sounds = {footstep = {name = "wood_steep", gain = 0.5,max_hear_distance = 2}},	
})

core.register_node("zombies4test:cobweb", {
	description = "Cobweb",
	drawtype = "plantlike",
	tiles = {"cobweb.png"},
	inventory_image = "cobweb.png",
	move_resistance = 5,
	walkable = false,
	groups = {snappy = 3},
	_mcl_hardness = 0.2,
	is_ground_content = false,
        --sounds = {footstep = {name = "wood_steep", gain = 0.5,max_hear_distance = 10}},	
})
-- GLASS :
core.register_node("zombies4test:motel_glass", {
    description = "Z Hotel Glass",
    tiles = {"default_glass.png"}, 
    is_ground_content = true,
    groups = {cracky = 3},  
    _mcl_hardness = 2,  
    use_texture_alpha = "blend",
    sunlight_propagates = false,
    drawtype = "glasslike",
    paramtype = "light",

    sounds = {        
		footstep = {name = "glass_footstep", gain = 0.5,max_hear_distance = 5},
		--dig = {name = "", gain = 0.5,max_hear_distance = 5},
		--dug = {name = "", gain = 0.5,max_hear_distance = 5},
		--place = {name = "", gain = 1.0},
         }
         
})
--- VINE
core.register_node("zombies4test:zvine", {
    description = "Z Vine",
    tiles = {"zvine.png"},
    drawtype = "nodebox",
    paramtype = "light",
    sunlight_propagates = true,
    use_texture_alpha = "blend",
    paramtype2 = "facedir",
    groups = {snappy = 3},
    walkable = false,
    _mcl_hardness = 0.2,
    drop = "zombies4test:zvine",
    sounds = {footstep = {name = "stone_step", gain = 0.5,max_hear_distance = 2}},     
    node_box = {
        type = "fixed",
        fixed = {
            {-0.5, -0.5, -0.5, 0.5, -0.49, 0.5},
        },
    },
    
       on_place = core.rotate_node,
})
