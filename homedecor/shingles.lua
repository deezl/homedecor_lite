local S = homedecor.gettext
 
minetest.register_node("homedecor:shingles_wood", {
description = S("Wood Shingles"),
drawtype = "raillike",
tiles = { "homedecor_shingles_wood.png" },
wield_image = "homedecor_shingles_wood.png",
inventory_image = "homedecor_shingles_wood_inv.png",
paramtype = "light",
sunlight_propagates = false,
walkable = false,
groups = { snappy = 3 },
sounds = default.node_sound_leaves_defaults(),
selection_box = {
type = "fixed",
fixed = { -0.5, -0.5, -0.5, 0.5, -0.4, 0.5 }
}
})

