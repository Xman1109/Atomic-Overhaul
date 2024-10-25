if settings.startup["ao-complexity-level"].value ~= "simple" then
    data:extend({
        {
            type = "recipe",
            name = "thorium-rod-recipe",
            icon = graphics .. "thorium-fuel-rod.png",
            icon_size = 128,
            icon_mipmaps = 4,
            subgroup = "fuel-rods",
            order = "d",
            category = "centrifuging",
            enabled = false,
            energy_required = 30,
            ingredients = {
                { type = "item", name = "thorium",  amount = 10 },
                { type = "item", name = "graphite", amount = 1 }
            },
            results = {
                {type="item", name="thorium-fuel-rod", amount=10}
            }
        }
    })
end
