minetest.register_craft({
    type = "shapeless",
    output = "twomt_tinker:fabolight_ice",
    recipe = {
        "twomt_tinker:fabolight",
        "default:snow"
    }
})

minetest.register_craft({
    type = "shapeless",
    output = "twomt_tinker:minevium_book",
    recipe = {
        "twomt_tinker:minevium",
        "default:paper"
    }
})

minetest.register_craft({
    type = "fuel",
    recipe = "twomt_tinker:minevium",
    burntime = 500,
})

minetest.register_craft({
	output = "twomt_tinker:minevisword",
	recipe = {
		{"twomt_tinker:minevium"},
		{"twomt_tinker:minevium"},
		{"default:stick"},
	}
})

minetest.register_craft({
	output = "twomt_tinker:minevipick",
	recipe = {
		{"twomt_tinker:minevium", "twomt_tinker:minevium", "twomt_tinker:minevium"},
		{"", "default:stick", ""},
		{"", "default:stick", ""},
	}
})

minetest.register_craft({
	output = "twomt_tinker:mineviaxe",
	recipe = {
		{"twomt_tinker:minevium", "twomt_tinker:minevium"},
		{"twomt_tinker:minevium", "default:stick"},
		{"", "default:stick"},
	}
})

minetest.register_craft({
	type = "cooking",
	output = "twomt_tinker:minevium_ingot",
	recipe = "twomt_tinker:minevium_lump",
})
    
minetest.register_craft({
	output = "twomt_tinker:burning_pumpkin",
	recipe = {
		{"twomt_tinker:pumpkin"},
		{"default:torch"}
	}
})

minetest.register_craft({
	type = "cooking",
	output = "twomt_tinker:fabolight_ingot",
	recipe = "twomt_tinker:fabolight_lump",
})
