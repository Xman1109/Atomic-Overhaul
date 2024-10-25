data:extend(
{
    {
        type = "recipe",
        name = "iridium-192-reprocessing",
        icon = se_addon_graphics .. "iridium-192-reprocessing-recipe.png",
        icon_size = 64,
        icon_mipmaps = 4,
        category = "space-radiation",
        crafting_machine_tint = cmt.iridium,
        energy_required = 50,
        enabled = false,
        order = "za",
        subgroup = "reprocessing",
        ingredients =
        {
            {type="item", name="iridium-depleted-cell", amount=5}
        },
        results = 	{
            {type="item", name="nuclear-waste", amount=15},
            {type = "item", name = "se-iridium-powder", amount_min = 0, amount_max = 3},
            {type="item", name="research-data", amount_min = 8, amount_max = 10}
        },
    }
})