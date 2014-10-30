--glow lights removed, kept lattice lanterns
local S = homedecor.gettext
 
minetest.register_node('homedecor:lattice_lantern_large', {
	description = S("Lattice lantern (large)"),
	tiles = { 'homedecor_lattice_lantern_large.png' },
	sunlight_propagates = false,
	paramtype = "light",
	walkable = true,
	groups = { snappy = 3 },
	light_source = LIGHT_MAX,
	sounds = default.node_sound_wood_defaults(),
})

minetest.register_node('homedecor:lattice_lantern_small', {
	description = S("Lattice lantern (small)"),
	drawtype = "nodebox",
	tiles = {
		'homedecor_lattice_lantern_small_tb.png',
		'homedecor_lattice_lantern_small_tb.png',
		'homedecor_lattice_lantern_small_sides.png'
	},
    selection_box = {
            type = "fixed",
            fixed = { -0.25, -0.5, -0.25, 0.25, 0, 0.25 }
    },
    node_box = {
            type = "fixed",
            fixed = { -0.25, -0.5, -0.25, 0.25, 0, 0.25 }
    },
	sunlight_propagates = false,
	paramtype = "light",
	paramtype2 = "facedir",
	walkable = true,
	groups = { snappy = 3 },
	light_source = LIGHT_MAX-1,
	sounds = default.node_sound_wood_defaults(),
	on_place = minetest.rotate_node
})

