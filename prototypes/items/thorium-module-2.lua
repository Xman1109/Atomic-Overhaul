if settings.startup["ao-complexity-level"].value ~= "simple" then
  if mods["space-exploration"] and settings.startup["se-addon"].value == true then
    icon = se_addon_graphics .. "thorium-module-2.png"
    icon_size = 128
    effect = {
      productivity = 0.06,
      consumption = 1.20,
      speed = 0.15,
      pollution = 0.12
    }
  else
    icon = graphics .. "thorium-module-2.png"
    icon_size = 64
    effect = {
      productivity = 0.05,
      consumption = 0.50,
      speed = 0.20,
      pollution = 0.10
    }
  end
  data:extend(
    {
      {
        type = "module",
        name = "thorium-module-2",
        icon = icon,
        icon_size = icon_size,
        icon_mipmaps = 4,
        subgroup = "module",
        category = "thorium-module",
        tier = 2,
        order = "d[thorium-module-1]-d[thorium-module-2]",
        stack_size = 50,
        effect = effect,
        limitation = thorium_module_limitation(),
        limitation_message_key = "thorium-module-usable-only-on-intermediates"
      },
    }
  )
end
