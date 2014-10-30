-- Various kinds of window shutters

local S = homedecor.gettext

local shutters = {
	{"oak", "Unpainted oak"},
	{"forest_green", "Forest green"},
	{"black", "Black"},
	{"white", "White"},
}

for i in ipairs(shutters) do
	local name = shutters[i][1]
	local desc = shutters[i][2]

	minetest.register_node("homedecor:shutter_"..name, {
		description = S("Wooden Shutter ("..desc..")"),
		tiles = { "homedecor_window_shutter_"..name..".png" },
		inventory_image = "homedecor_window_shutter_"..name..".png",
		wield_image = "homedecor_window_shutter_"..name..".png",
		drawtype = 'signlike',
		sunlight_propagates = true,
		paramtype = "light",
		paramtype2 = "facedir",
		walkable = false,
		groups = { snappy = 3 },
		sounds = default.node_sound_wood_defaults(),
		paramtype2 = 'wallmounted',
		selection_box = {
			type = "wallmounted",
			--wall_side = = <default>
		},
	})
end

minetest.register_alias("homedecor:shutter_purple", "homedecor:shutter_violet")
