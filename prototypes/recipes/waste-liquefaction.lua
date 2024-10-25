if settings.startup["ao-complexity-level"].value ~= "simple" then
    data:extend({ {
        type = "recipe",
        name = "waste-liquefaction",
        icon = graphics .. "waste-liquefaction.png",
        icon_size = 64,
        icon_mipmaps = 4,
        category = "chemistry",
        subgroup = "waste-reprocessing",
        order = "a",
        enabled = false,
        energy_required = 10,
        ingredients = {
            {type="item", name="nuclear-waste", amount=20},
            { type = "fluid",  name = "sulfuric-acid", amount = 10 }
        },
        results = {
            { type = "fluid", name = "waste-solution", amount = 10 }
        }
    } })
end
