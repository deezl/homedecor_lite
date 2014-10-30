local S = homedecor.gettext

minetest.register_craftitem("homedecor:steel_wire", {
	description = S("Spool of steel wire"),
	inventory_image = "homedecor_steel_wire.png"
})

minetest.register_craft( {
    output = "homedecor:steel_wire 4",
    recipe = {
		{ "", "homedecor:plastic_sheeting", "" },
		{ "default:steel_ingot", "homedecor:plastic_sheeting", "default:steel_ingot" },
		{ "", "homedecor:plastic_sheeting", "" }
    },
})

minetest.register_craftitem("homedecor:paraffin", {
        description = S("Unprocessed paraffin"),
        inventory_image = "homedecor_paraffin.png",
})

minetest.register_craftitem("homedecor:plastic_sheeting", {
        description = S("Plastic sheet"),
        inventory_image = "homedecor_plastic_sheeting.png",
})

minetest.register_craft({
        type = "cooking",
        output = "homedecor:paraffin",
        recipe = "group:leaves",
})

minetest.register_craft({
        type = "cooking",
        output = "homedecor:plastic_sheeting",
        recipe = "homedecor:parrafin",
})



-- wood-lattice lamps

minetest.register_craft( {
        output = "homedecor:lattice_lantern_large 2",
        recipe = {
			{ "dye:black", "dye:yellow", "dye:black" },
			{ "group:stick", "building_blocks:woodglass", "group:stick" },
			{ "group:stick", "homedecor:power_crystal", "group:stick" }
        },
})

minetest.register_craft( {
        output = "homedecor:lattice_lantern_small 8",
        recipe = {
			{ "homedecor:lattice_lantern_large" },
        },
})

-- benches

minetest.register_craft( {
        output = "homedecor:bench_large_1_left",
        recipe = {
			{ "group:wood", "group:wood", "group:wood" },
			{ "group:wood", "group:wood", "group:wood" },
			{ "homedecor:pole_wrought_iron", "", "homedecor:pole_wrought_iron" }
        },
})

minetest.register_craft( {
        output = "homedecor:bench_large_2_left",
        recipe = {
			{ "homedecor:shutter_oak", "homedecor:shutter_oak", "homedecor:shutter_oak" },
			{ "group:wood", "group:wood", "group:wood" },
			{ "stairs:slab_wood", "", "stairs:slab_wood" }
        },
})

minetest.register_craft( {
        output = "homedecor:bench_large_2_left",
        recipe = {
			{ "homedecor:shutter_oak", "homedecor:shutter_oak", "homedecor:shutter_oak" },
			{ "group:wood", "group:wood", "group:wood" },
			{ "moreblocks:slab_wood", "", "moreblocks:slab_wood" }
        },
})

minetest.register_craft( {
        output = "homedecor:simple_bench",
        recipe = {
			{ "stairs:slab_wood", "stairs:slab_wood", "stairs:slab_wood" },
			{ "stairs:slab_wood", "", "stairs:slab_wood" }
        },
})

minetest.register_craft( {
        output = "homedecor:simple_bench",
        recipe = {
			{ "moreblocks:slab_wood", "moreblocks:slab_wood", "moreblocks:slab_wood" },
			{ "moreblocks:slab_wood", "", "moreblocks:slab_wood" }
        },
})

--beds

local bedcolors = {
	{ "red", "red"},
	{ "orange", "orange" },
	{ "yellow", "yellow"},
	{ "green", "dark_green"},
	{ "blue", "blue"},
	{ "violet", "violet"},
	{ "pink", "pink"},
	{ "darkgrey", "dark_grey"},
	{ "brown", "brown" },
}

for c in ipairs(bedcolors) do
	local color = bedcolors[c][1]
	local woolcolor = bedcolors[c][2]

	minetest.register_craft( {
		    output = "homedecor:bed_"..color.."_foot",
		    recipe = {
				{ "group:stick", "", "group:stick" },
				{ "wool:white", "wool:"..woolcolor, "wool:"..woolcolor },
				{ "group:wood", "", "group:wood" },
		    },
	})

end

--tabletops

minetest.register_craft( {
        output = "homedecor:glass_table_small_round_b 15",
        recipe = {
                { "", "default:glass", "" },
                { "default:glass", "default:glass", "default:glass" },
                { "", "default:glass", "" },
        },
})

minetest.register_craft( {
        output = "homedecor:glass_table_small_square_b 2",
        recipe = {
		{"homedecor:glass_table_small_round", "homedecor:glass_table_small_round" },
	}
})

minetest.register_craft( {
        output = "homedecor:glass_table_large_b 2",
        recipe = { 
		{ "homedecor:glass_table_small_square", "homedecor:glass_table_small_square" },
	}
})

--

minetest.register_craft( {
        output = "homedecor:wood_table_small_round_b 15",
        recipe = {
                { "", "group:wood", "" },
                { "group:wood", "group:wood", "group:wood" },
                { "", "group:wood", "" },
        },
})

minetest.register_craft( {
        output = "homedecor:wood_table_small_square_b 2",
        recipe = { 
		{ "homedecor:wood_table_small_round","homedecor:wood_table_small_round" },
	}
})

minetest.register_craft( {
        output = "homedecor:wood_table_large_b 2",
        recipe = { 
		{ "homedecor:wood_table_small_square", "homedecor:wood_table_small_square" },
	}
})

--

minetest.register_craft({
        type = "fuel",
        recipe = "homedecor:wood_table_small_round_b",
        burntime = 30,
})

minetest.register_craft({
        type = "fuel",
        recipe = "homedecor:wood_table_small_square_b",
        burntime = 30,
})

minetest.register_craft({
        type = "fuel",
        recipe = "homedecor:wood_table_large_b",
        burntime = 30,
})

--shingles

minetest.register_craft( {
        output = "homedecor:shingles_wood 12",
        recipe = {
                { "group:stick", "group:wood"},
                { "group:wood", "group:stick"},
        },
})

minetest.register_craft( {
        output = "homedecor:shingles_wood 12",
        recipe = {
                { "group:wood", "group:stick"},
                { "group:stick", "group:wood"},
        },
})

minetest.register_craft({
        type = "fuel",
        recipe = "homedecor:shingles_wood",
        burntime = 30,
})

--shutters

-- Various colors of shutters

minetest.register_craft( {
        output = "homedecor:shutter_oak 2",
        recipe = {
		{ "group:stick", "group:stick" },
		{ "group:stick", "group:stick" },
		{ "group:stick", "group:stick" },
        },
})

minetest.register_craft({
        type = "fuel",
        recipe = "homedecor:shutter_oak",
        burntime = 30,
})

--

minetest.register_craft( {
	type = "shapeless",
        output = "homedecor:shutter_black 4",
        recipe = {
		"homedecor:shutter_oak",
		"homedecor:shutter_oak",
		"homedecor:shutter_oak",
		"homedecor:shutter_oak",
		"dye:black"
        },
})

minetest.register_craft({
        type = "fuel",
        recipe = "homedecor:shutter_black",
        burntime = 30,
})

--

minetest.register_craft( {
	type = "shapeless",
        output = "homedecor:shutter_dark_grey 4",
        recipe = {
		"homedecor:shutter_oak",
		"homedecor:shutter_oak",
		"homedecor:shutter_oak",
		"homedecor:shutter_oak",
		"dye:dark_grey"
        },
})

minetest.register_craft({
        type = "fuel",
        recipe = "homedecor:shutter_dark_grey",
        burntime = 30,
})

--

minetest.register_craft( {
	type = "shapeless",
        output = "homedecor:shutter_grey 4",
        recipe = {
		"homedecor:shutter_oak",
		"homedecor:shutter_oak",
		"homedecor:shutter_oak",
		"homedecor:shutter_oak",
		"dye:grey"
        },
})

minetest.register_craft({
        type = "fuel",
        recipe = "homedecor:shutter_grey",
        burntime = 30,
})

--

minetest.register_craft( {
	type = "shapeless",
        output = "homedecor:shutter_white 4",
        recipe = {
		"homedecor:shutter_oak",
		"homedecor:shutter_oak",
		"homedecor:shutter_oak",
		"homedecor:shutter_oak",
		"dye:white"
        },
})

minetest.register_craft({
        type = "fuel",
        recipe = "homedecor:shutter_white",
        burntime = 30,
})

--

minetest.register_craft( {
	type = "shapeless",
        output = "homedecor:shutter_mahogany 4",
       	recipe = {
		"homedecor:shutter_oak",
		"homedecor:shutter_oak",
		"homedecor:shutter_oak",
		"homedecor:shutter_oak",
		"dye:brown"
	},
})

minetest.register_craft({
       	type = "fuel",
       	recipe = "homedecor:shutter_mahogany",
       	burntime = 30,
})
minetest.register_craft( {
	type = "shapeless",
        output = "homedecor:shutter_red 4",
       	recipe = {
		"homedecor:shutter_oak",
		"homedecor:shutter_oak",
		"homedecor:shutter_oak",
		"homedecor:shutter_oak",
		"dye:red"
	},
})

minetest.register_craft({
       	type = "fuel",
       	recipe = "homedecor:shutter_red",
       	burntime = 30,
})

minetest.register_craft( {
	type = "shapeless",
        output = "homedecor:shutter_yellow 4",
       	recipe = {
		"homedecor:shutter_oak",
		"homedecor:shutter_oak",
		"homedecor:shutter_oak",
		"homedecor:shutter_oak",
		"dye:yellow"
	},
})

minetest.register_craft({
       	type = "fuel",
       	recipe = "homedecor:shutter_yellow",
       	burntime = 30,
})

--

minetest.register_craft( {
	type = "shapeless",
        output = "homedecor:shutter_forest_green 4",
        recipe = {
		"homedecor:shutter_oak",
		"homedecor:shutter_oak",
		"homedecor:shutter_oak",
		"homedecor:shutter_oak",
		"dye:dark_green"
        },
})

minetest.register_craft({
        type = "fuel",
        recipe = "homedecor:shutter_forest_green",
        burntime = 30,
})

--

minetest.register_craft( {
	type = "shapeless",
        output = "homedecor:shutter_light_blue 4",
       	recipe = {
		"homedecor:shutter_oak",
		"homedecor:shutter_oak",
		"homedecor:shutter_oak",
		"homedecor:shutter_oak",
		"unifieddyes:light_blue"
	},
})

minetest.register_craft({
       	type = "fuel",
       	recipe = "homedecor:shutter_light_blue",
       	burntime = 30,
})

minetest.register_craft( {
	type = "shapeless",
        output = "homedecor:shutter_violet 4",
       	recipe = {
		"homedecor:shutter_oak",
		"homedecor:shutter_oak",
		"homedecor:shutter_oak",
		"homedecor:shutter_oak",
		"dye:violet"
	},
})

minetest.register_craft({
       	type = "fuel",
       	recipe = "homedecor:shutter_violet",
       	burntime = 30,
})

-- Table legs

minetest.register_craft( {
        output = "homedecor:table_legs_wrought_iron 3",
        recipe = {
                { "", "default:iron_lump", "" },
                { "", "default:iron_lump", "" },
                { "default:iron_lump", "default:iron_lump", "default:iron_lump" },
        },
})

minetest.register_craft( {
        output = "homedecor:utility_table_legs",
        recipe = {
                { "group:stick", "group:stick", "group:stick" },
                { "group:stick", "", "group:stick" },
                { "group:stick", "", "group:stick" },
        },
})

minetest.register_craft({
        type = "fuel",
        recipe = "homedecor:utility_table_legs",
        burntime = 30,
})

minetest.register_craft({
        type = "shapeless",
        output = "default:stick 4",
        recipe = {
		"homedecor:wood_table_small_round",
		"homedecor:wood_table_small_round",
		"homedecor:wood_table_small_round"
	}
})

minetest.register_craft({
        type = "shapeless",
        output = "default:stick 4",
        recipe = {
		"homedecor:wood_table_small_square",
		"homedecor:wood_table_small_square",
		"homedecor:wood_table_small_square"
	}
})

minetest.register_craft({
        type = "shapeless",
        output = "default:stick 4",
        recipe = {
		"homedecor:wood_table_large",
		"homedecor:wood_table_large",
		"homedecor:wood_table_large"
	}
})

--kitchen

minetest.register_craft({
	output = "homedecor:refrigerator_steel_bottom",
	recipe = {
		{"default:steel_ingot", "homedecor:glowlight_small_cube_white", "default:steel_ingot", },
		{"default:steel_ingot", "default:copperblock", "default:steel_ingot", },
		{"default:steel_ingot", "default:clay", "default:steel_ingot", },
	}
})

minetest.register_craft({
	type = "shapeless",
	output = "homedecor:refrigerator_white_bottom",
	recipe = {
		"homedecor:refrigerator_steel_bottom",
		"dye:white",
		"dye:white",
		"dye:white",
	}
})

minetest.register_craft({
        output = "homedecor:kitchen_cabinet",
        recipe = {
		{"group:wood", "group:stick", "group:wood", },
		{"group:wood", "group:stick", "group:wood", },
		{"group:wood", "group:stick", "group:wood", },
	}
})

minetest.register_craft({
	type = "shapeless",
        output = "homedecor:kitchen_cabinet_half 2",
        recipe = { "homedecor:kitchen_cabinet" }
})

minetest.register_craft({
        output = "homedecor:kitchen_cabinet_with_sink",
        recipe = {
		{"group:wood", "default:steel_ingot", "group:wood", },
		{"group:wood", "default:steel_ingot", "group:wood", },
		{"group:wood", "group:stick", "group:wood", },
	}
})

--fences

minetest.register_craft( {
        output = "homedecor:fence_wrought_iron 6",
        recipe = {
                { "default:iron_lump","default:iron_lump","default:iron_lump" },
                { "default:iron_lump","default:iron_lump","default:iron_lump" },
        },
})

-- other types of fences


minetest.register_craft( {
        output = "homedecor:fence_picket 6",
        recipe = {
                { "group:stick", "group:stick", "group:stick" },
                { "group:stick", "", "group:stick" },
                { "group:stick", "group:stick", "group:stick" }
        },
})

minetest.register_craft( {
	type = "shapeless",
	output = "homedecor:fence_picket_corner",
	recipe = {
		"homedecor:fence_picket",
		"homedecor:fence_picket"
	},
})

minetest.register_craft( {
	type = "shapeless",
	output = "homedecor:fence_picket 2",
	recipe = {
		"homedecor:fence_picket_corner"
	},
})

--


minetest.register_craft( {
        output = "homedecor:fence_picket_white 6",
        recipe = {
                { "group:stick", "group:stick", "group:stick" },
                { "group:stick", "dye:white", "group:stick" },
                { "group:stick", "group:stick", "group:stick" }
        },
})

minetest.register_craft( {
	type = "shapeless",
	output = "homedecor:fence_picket_corner_white",
	recipe = {
		"homedecor:fence_picket_white",
		"homedecor:fence_picket_white"
	},
})

minetest.register_craft( {
	type = "shapeless",
	output = "homedecor:fence_picket_white 2",
	recipe = {
		"homedecor:fence_picket_corner_white"
	},
})

minetest.register_craft( {
        output = "homedecor:fence_chainlink 9",
        recipe = {
                { "default:steel_ingot", "default:steel_ingot", "default:steel_ingot" },
                { "homedecor:steel_wire", "homedecor:steel_wire", "default:steel_ingot" },
                { "homedecor:steel_wire", "homedecor:steel_wire", "default:steel_ingot" }
        },
})

minetest.register_craft( {
	type = "shapeless",
	output = "homedecor:fence_chainlink_corner",
	recipe = { "homedecor:fence_chainlink", "homedecor:fence_chainlink" },
})

minetest.register_craft( {
	type = "shapeless",
	output = "homedecor:fence_chainlink 2",
	recipe = { "homedecor:fence_chainlink_corner" },
})


-- Gates

minetest.register_craft( {
	type = "shapeless",
        output = "homedecor:gate_picket_white_closed",
        recipe = {
		"homedecor:fence_picket_white"
        },
})

minetest.register_craft( {
	type = "shapeless",
        output = "homedecor:fence_picket_white",
        recipe = {
		"homedecor:gate_picket_white_closed"
        },
})

minetest.register_craft( {
	type = "shapeless",
        output = "homedecor:gate_picket_closed",
        recipe = {
		"homedecor:fence_picket"
        },
})

minetest.register_craft( {
	type = "shapeless",
        output = "homedecor:fence_picket",
        recipe = {
		"homedecor:gate_picket_closed"
        },
})

minetest.register_craft( {
	type = "shapeless",
        output = "homedecor:gate_chainlink_closed",
        recipe = {
		"homedecor:fence_chainlink"
        },
})

minetest.register_craft( {
	type = "shapeless",
        output = "homedecor:fence_chainlink",
        recipe = {
		"homedecor:gate_chainlink_closed"
        },
})

------ Doors

-- plain wood, non-windowed

minetest.register_craft( {
        output = "homedecor:door_wood_plain_bottom_left 2",
        recipe = {
		{ "group:wood", "group:wood", "" },
		{ "group:wood", "group:wood", "default:steel_ingot" },
		{ "group:wood", "group:wood", "" },
        },
})

-- fancy exterior

minetest.register_craft( {
        output = "homedecor:door_exterior_fancy_bottom_left 2",
        recipe = {
		{ "group:wood", "default:glass" },
		{ "group:wood", "group:wood" },
		{ "group:wood", "group:wood" },
        },
})

-- wood and glass (grid style)

-- bare

minetest.register_craft( {
        output = "homedecor:door_wood_glass_bottom_left 2",
        recipe = {
		{ "default:glass", "group:wood" },
		{ "group:wood", "default:glass" },
		{ "default:glass", "group:wood" },
        },
})

minetest.register_craft( {
        output = "homedecor:door_wood_glass_bottom_left 2",
        recipe = {
		{ "group:wood", "default:glass" },
		{ "default:glass", "group:wood" },
		{ "group:wood", "default:glass" },
        },
})

-- mahogany

minetest.register_craft( {
	type = "shapeless",
        output = "homedecor:door_wood_glass_mahogany_bottom_left 2",
        recipe = {
		"default:dirt",
		"default:coal_lump",
		"homedecor:door_wood_glass_bottom_left",
		"homedecor:door_wood_glass_bottom_left"
        },
})

minetest.register_craft( {
	type = "shapeless",
        output = "homedecor:door_wood_glass_mahogany_bottom_left 2",
        recipe = {
		"dye:brown",
		"homedecor:door_wood_glass_bottom_left",
		"homedecor:door_wood_glass_bottom_left"
        },
})

-- white

minetest.register_craft( {
	type = "shapeless",
        output = "homedecor:door_wood_glass_white_bottom_left 2",
        recipe = {
		"dye:white",
		"homedecor:door_wood_glass_bottom_left",
		"homedecor:door_wood_glass_bottom_left"
        },
})

-- Solid glass with metal handle

minetest.register_craft( {
        output = "homedecor:door_glass_bottom_left 2",
        recipe = {
		{ "default:glass", "default:glass" },
		{ "default:glass", "default:steel_ingot" },
		{ "default:glass", "default:glass" },
        },
})

-- Closet doors

-- oak

minetest.register_craft( {
        output = "homedecor:door_closet_oak_bottom_left 2",
        recipe = {
		{ "", "group:stick", "group:stick" },
		{ "default:steel_ingot", "group:stick", "group:stick" },
		{ "", "group:stick", "group:stick" },
        },
})

-- mahogany

minetest.register_craft( {
	type = "shapeless",
        output = "homedecor:door_closet_mahogany_bottom_left 2",
        recipe = {
		"homedecor:door_closet_oak_bottom_left",
		"homedecor:door_closet_oak_bottom_left",
		"default:dirt",
		"default:coal_lump",
        },
})

minetest.register_craft( {
	type = "shapeless",
        output = "homedecor:door_closet_mahogany_bottom_left 2",
        recipe = {
		"homedecor:door_closet_oak_bottom_left",
		"homedecor:door_closet_oak_bottom_left",
		"dye:brown"
        },
})

--desk

minetest.register_craft({
    output = "homedecor:desk",
    recipe = {
		{ "stairs:slab_wood", "stairs:slab_wood", "stairs:slab_wood" },
		{ "homedecor:drawer_small", "default:wood", "default:wood" },
		{ "homedecor:drawer_small", "", "default:wood" },
    },
})

minetest.register_craft({
    output = "homedecor:desk",
    recipe = {
		{ "moreblocks:slab_wood", "moreblocks:slab_wood", "moreblocks:slab_wood" },
		{ "homedecor:drawer_small", "default:wood", "default:wood" },
		{ "homedecor:drawer_small", "", "default:wood" },
    },
})
