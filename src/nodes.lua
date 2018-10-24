minetest.register_node("twomt_tinker:fabolight", {
    description = "It´s fabulous.",
    light_source = 5,
    tiles = {"twomt_tinker_fabolight.png"},
    is_ground_content = true,
    groups = {fleshy = 1},
    drop = "twomt_tinker:fabolight"
})

minetest.register_ore({
    ore_type = "blob",
    ore = "twomt_tinker:fabolight",
    wherein         = {"default:stone"},
    clust_scarcity  = 16 * 16 * 16,
    clust_size      = 5,
    y_min           = -31000,
    y_max           = 31000,
    noise_threshold = 0.0,
    noise_params    = {
        offset = 0.5,
        scale = 0.2,
        spread = {x = 5, y = 5, z = 5},
        seed = 1310,
        octaves = 1,
        persist = 0.0
    },
})