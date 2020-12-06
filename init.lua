minetest.register_node("ccs_jail:wall", {
	description = "Jail Stone Tile",
	range = 12,
	stack_max = 10000,
	tiles = {"moreblocks_stone_tile.png"},
	drop = "",
	-- post_effect_color = {a=255, r=0, g=0, b=0},
	groups = {unbreakable = 1, not_in_creative_inventory = maptools.creative},
	sounds = default.node_sound_stone_defaults(),
	on_drop = maptools.drop_msg
})

stairsplus:register_all("ccs_jail","wall","ccs_jail:wall",{
	description = "Jail Stone Tile",
	groups = {unbreakable = 1, not_in_creative_inventory = maptools.creative},
	range = 12,
	stack_max = 10000,
	tiles = {"moreblocks_stone_tile.png"},
	drop = "",
	sounds = default.node_sound_stone_defaults(),
	on_drop = maptools.drop_msg,
})

xpanes.register_pane("ccs_jail_bar", {
	description = "Jail Bars",
	range = 12,
	stack_max = 10000,
	textures = {"xpanes_bar.png", "", "xpanes_bar_top.png"},
	inventory_image = "xpanes_bar.png",
	wield_image = "xpanes_bar.png",
	groups = {unbreakable = 1, not_in_creative_inventory = maptools.creative},
	sounds = default.node_sound_metal_defaults(),
	recipe = {
		{"maptools:glass", "maptools:glass", "air"},
		{"maptools:glass", "maptools:glass", "maptools:glass"}
	}
})

minetest.register_node("ccs_jail:coal_glass",{
	description = "Jail Coal Glass",
	drawtype = "glasslike_framed_optional",
	tiles = {"default_glass.png^[colorize:#828282", "default_glass_detail.png^[colorize:#828282"},
	use_texture_alpha = true,
	paramtype = "light",
	sunlight_propagates = true,
	is_ground_content = false,
	groups = {unbreakable = 1, not_in_creative_inventory = maptools.creative},
	sounds = default.node_sound_glass_defaults(),

})
