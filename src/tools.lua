minetest.register_tool("twomt_tinker:minevisword", {
    description = "The Sword with knowledge.",
    inventory_image = "twomt_tinker_minevisword.png",
    tool_capabilities = {
        full_punch_interval = 1.5,
        max_drop_level = 1,
        groupcaps={
        	snappy={times={[1]=2.75, [2]=1.30, [3]=0.375}, uses=25, maxlevel=1},
        },
        damage_groups = {fleshy=6},
    },
})

minetest.register_tool("twomt_tinker:minevipick", {
	description = "The Pickaxe with knowledge.",
	inventory_image = "twomt_tinker_minevipick.png",
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=1,
		groupcaps={
			cracky = {times={[1]=3.50, [2]=1.10, [3]=0.40}, uses=20, maxlevel=2},
		},
		damage_groups = {fleshy=2},
	},
})

minetest.register_tool("twomt_tinker:mineviaxe", {
    description = "The Axe with knowledge.",
    inventory_image = "twomt_tinker_mineviaxe.png",
    tool_capabilities = {
        full_punch_interval = 1.0,
        max_drop_level = 0,
        groupcaps={
        	choppy={times={[1]=2.10, [2]=0.90, [3]=0.60}, uses=25, maxlevel=1},
        },
        damage_groups = {fleshy=2},
    },
})