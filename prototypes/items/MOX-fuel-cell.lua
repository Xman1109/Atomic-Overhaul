local fuel_value
local stack
if settings.startup["ao-complexity-level"].value == "simple" then
	fuel_value = "11GJ"
	stack = 25
else
	fuel_value = "12GJ"
	stack = 50
end

data:extend({
	{
		type = "item",
		name = "MOX-fuel-cell",
		icon = graphics .. "MOX-fuel-cell.png",
		icon_size = 64,
		icon_mipmaps = 4,
		pictures =
		{
			layers =
			{
				{
					size = 64,
					filename = graphics .. "MOX-fuel-cell1.png",
					scale = 0.5,
					mipmap_count = 4
				},
				{
					draw_as_light = true,
					flags = { "light" },
					size = 64,
					filename = base_graphics .. "uranium-fuel-cell-light.png",
					scale = 0.5,
					mipmap_count = 4
				}
			}
		},
		group = "atomic-overhaul",
		order = "d",
		subgroup = "fuel-cells",
		fuel_category = "nuclear",
		burnt_result = "MOX-depleted-cell",
		fuel_glow_color = { 118, 150, 57 },
		fuel_value = fuel_value,
		stack_size = stack
	}
})
