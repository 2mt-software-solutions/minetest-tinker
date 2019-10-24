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