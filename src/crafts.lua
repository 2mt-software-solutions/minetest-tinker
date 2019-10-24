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