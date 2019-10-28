minetest.register_craftitem("twomt_tinker:fabolight_ice", {
    description = "Mhhhh Fabolight Ice. It tastes delicious.",
    inventory_image = "twomt_tinker_fabolight_ice.png",
    on_use = minetest.item_eat(10)
})

minetest.register_craftitem("twomt_tinker:minevium_book", {
    description = "Transfers its natural state of sentience over to you, doubling your intellect.",
    inventory_image = "twomt_tinker_minevium_book.png",
    on_use = minetest.item_eat(6)
})

minetest.register_craftitem("twomt_tinker:minevium_lump", {
	description = "Minevium Lump",
    inventory_image = "twomt_tinker_minevium_lump.png",
    on_use = minetest.item_eat(6)
})

minetest.register_craftitem("twomt_tinker:minevium_ingot", {
	description = "Minevium Ingot",
	inventory_image = "twomt_tinker_minevium_ingot.png"
})

minetest.register_craftitem("twomt_tinker:fabolight_lump", {
	description = "Fabolight Lump",
	inventory_image = "twomt_tinker_fabolight_lump.png"
})

minetest.register_craftitem("twomt_tinker:fabolight_ingot", {
	description = "Fabolight Ingot",
	inventory_image = "twomt_tinker_fabolight_ingot.png"
})
