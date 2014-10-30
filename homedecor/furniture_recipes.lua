
minetest.register_craft({
    output = "homedecor:table", "homedecor:chair 2",
    recipe = {
        { "group:wood","group:wood", "group:wood" },
        { "group:stick", "", "group:stick" },
    },
})

minetest.register_craft({
	type = "shapeless",
    output = "homedecor:table_mahogany",
    recipe = {
		"homedecor:table",
		"dye:brown",
    },
})

minetest.register_craft({
	type = "shapeless",
    output = "homedecor:table_mahogany",
    recipe = {
		"homedecor:table",
		"unifieddyes:dark_orange",
    },
})

minetest.register_craft({
	type = "shapeless",
    output = "homedecor:table_white",
    recipe = {
		"homedecor:table",
		"dye:white",
    },
})

minetest.register_craft({
    type = "fuel",
    recipe = "homedecor:table",
    burntime = 30,
})

minetest.register_craft({
    type = "fuel",
    recipe = "homedecor:table_mahogany",
    burntime = 30,
})

minetest.register_craft({
    type = "fuel",
    recipe = "homedecor:table_white",
    burntime = 30,
})

minetest.register_craft({
	output = "homedecor:chair 2",
	recipe = {
	    { "group:stick",""},
	    { "group:wood","group:wood" },
	    { "group:stick","group:stick" },
	},
})

minetest.register_craft({
	type = "fuel",
	recipe = "homedecor:chair",
	burntime = 15,
})



minetest.register_craft({
    type = "fuel",
    recipe = "homedecor:armchair",
    burntime = 30,
})

minetest.register_craft({
	output = "homedecor:table_lamp_off",
	recipe = {
	    {"default:paper","default:torch" ,"default:paper"},
	    {"","group:stick",""},
	    {"","stairs:slab_wood",""},
	},
})

minetest.register_craft({
	output = "homedecor:table_lamp_off",
	recipe = {
	    {"default:paper","default:torch" ,"default:paper"},
	    {"","group:stick",""},
	    {"","moreblocks:slab_wood",""},
	},
})

minetest.register_craft({
    type = "fuel",
    recipe = "homedecor:table_lamp_off",
    burntime = 10,
})



minetest.register_craft({
    output = "homedecor:torch_wall 10",
    recipe = {
        { "default:coal_lump" },
        { "default:steel_ingot" },
    },
})
