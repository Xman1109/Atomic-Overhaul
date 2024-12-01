data:extend({
    {
        type = "item",
        name = "beryllium-fuel-cell",
        icon = se_addon_graphics .. "beryllium-fuel-cell.png",
        icon_size = 64, icon_mipmaps = 4,
        pictures =
        {
          layers =
          {
            {
              size = 64,
              filename = se_addon_graphics .. "beryllium-fuel-cell.png",
              scale = 0.5,
              icon_mipmaps = 4
            },
            {
              draw_as_light = true,
              flags = {"light"},
              size = 64,
              filename = base_graphics .. "uranium-fuel-cell-light.png",
              scale = 0.5,
              icon_mipmaps = 4
            }
          }
        },
        fuel_category = "space-nuclear-fuel",
        burnt_result = "beryllium-depleted-cell",
        fuel_value = "25GJ",
        fuel_glow_color = {100, 247, 207},
        stack_size = 50,
        group = "atomic_overhaul",
        subgroup = "space-fuel-cells",
        order = "zc",
    }
})