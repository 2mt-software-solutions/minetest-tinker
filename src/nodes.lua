minetest.register_node("twomt_tinker:fabolight", {
    description = "It´s fabulous.",
    light_source = 5,
    tiles = {"default_stone.png^twomt_tinker_fabolight.png"},
    is_ground_content = true,
    groups = {cracky = 2},
    drop = "twomt_tinker:fabolight_lump"
})

minetest.register_node("twomt_tinker:minevium", {
    description = "sprouting from your head.",
    light_source = 2,
    tiles = {"default_stone.png^twomt_tinker_minevium.png"},
    is_ground_content = true,
    groups = {cracky = 1},
    drop = "twomt_tinker:minevium_lump"
})

minetest.register_node("twomt_tinker:pumpkin", {
    description = "Pumpkin",
    tiles = {
        "twomt_tinker_pumpkin_top.png",
        "twomt_tinker_pumpkin_bottom.png",
        "twomt_tinker_pumpkin_side.png",
        "twomt_tinker_pumpkin_side.png",
        "twomt_tinker_pumpkin_side.png",
        "twomt_tinker_pumpkin_front.png",
    },
    fertility = {"grassland", "dirt"},
    groups = {flammable = 4, },
})

minetest.register_node("twomt_tinker:burning_pumpkin", {
    description = "Burning Pumpkin",
    light_source = 10,
    tiles = {
        "twomt_tinker_pumpkin_top.png",
        "twomt_tinker_pumpkin_bottom.png",
        "twomt_tinker_pumpkin_side.png",
        "twomt_tinker_pumpkin_side.png",
        "twomt_tinker_pumpkin_side.png",
        "twomt_tinker_pumpkin_front_burning.png",
    },
    fertility = {"grassland", "dirt"},
    groups = {flammable = 4, },
})

minetest.register_node("twomt_tinker:minevium_plant", {
    description = "Minevium Plant",
    light_source = 3,
    drawtype = "plantlike",
    tiles = {"twomt_tinker_minevium_plant.png"},
    fertility = {"grassland"},
    groups = {snappy = 3, flammable = 1},
    on_use = minetest.item_eat(20),
})