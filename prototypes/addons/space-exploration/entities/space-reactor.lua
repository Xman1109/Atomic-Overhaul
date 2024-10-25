require("util")
data:extend({
  {
    type = "reactor",
    name = "space-reactor",
    icon = se_addon_graphics .. "space-reactor.png",
    icon_size = 64, icon_mipmaps = 4,
    flags = { "placeable-neutral", "player-creation" },
    minable = { mining_time = 1.0, result = "space-reactor" },
    max_health = 500,
    corpse = "nuclear-reactor-remnants",
    dying_explosion = "nuclear-reactor-explosion",
    consumption = "100MW",
    neighbour_bonus = 1,
    use_fuel_glow_color = true,
    default_fuel_glow_color = { 0, 218, 252 },
    collision_mask = data.raw["assembling-machine"]["se-space-manufactory"].collision_mask,
    energy_source =
    {
      type = "burner",
      fuel_category = "space-nuclear-fuel",
      effectivity = 1,
      fuel_inventory_size = 1,
      burnt_inventory_size = 1,
      light_flicker =
      {
        color = { 0, 0, 0 },
        minimum_intensity = 0.7,
        maximum_intensity = 0.99
      }
    },
    collision_box = { { -2.2, -2.2 }, { 2.2, 2.2 } },
    selection_box = { { -2.5, -2.5 }, { 2.5, 2.5 } },
    damaged_trigger_effect = hit_effects.entity(),
    lower_layer_picture =
    {
      filename = "__base__/graphics/entity/nuclear-reactor/reactor-pipes.png",
      width = 320,
      height = 316,
      scale = 0.5,
      shift = util.by_pixel( -1, -5)
    },
    heat_lower_layer_picture = apply_heat_pipe_glow
    {
      filename = "__base__/graphics/entity/nuclear-reactor/reactor-pipes-heated.png",
      width = 320,
      height = 316,
      scale = 0.5,
      shift = util.by_pixel( -0.5, -4.5)
    },

    picture =
    {
      layers =
      {
        {
          filename = se_addon_entity_graphics .. "hr-reactor.png",
          width = 302,
          height = 318,
          scale = 0.5,
          shift = util.by_pixel( -5, -7)
        },
        {
          filename = "__base__/graphics/entity/nuclear-reactor/reactor-shadow.png",
          width = 525,
          height = 323,
          scale = 0.5,
          shift = { 1.625, 0 },
          draw_as_shadow = true
        }
      }
    },

    working_light_picture =
    {
      filename = se_addon_entity_graphics .. "hr-reactor-lights-color.png",
      blend_mode = "additive",
      draw_as_glow = true,
      width = 320,
      height = 320,
      scale = 0.5,
      shift = { -0.03125, -0.1875 },
    },
    heat_buffer =
    {
      max_temperature = 2500,
      specific_heat = "10MJ",
      max_transfer = "10GW",
      minimum_glow_temperature = 500,
      connections =
      {
        {
          position = { -2, -2 },
          direction = defines.direction.north
        },
        {
          position = { 0, -2 },
          direction = defines.direction.north
        },
        {
          position = { 2, -2 },
          direction = defines.direction.north
        },
        {
          position = { 2, -2 },
          direction = defines.direction.east
        },
        {
          position = { 2, 0 },
          direction = defines.direction.east
        },
        {
          position = { 2, 2 },
          direction = defines.direction.east
        },
        {
          position = { 2, 2 },
          direction = defines.direction.south
        },
        {
          position = { 0, 2 },
          direction = defines.direction.south
        },
        {
          position = { -2, 2 },
          direction = defines.direction.south
        },
        {
          position = { -2, 2 },
          direction = defines.direction.west
        },
        {
          position = { -2, 0 },
          direction = defines.direction.west
        },
        {
          position = { -2, -2 },
          direction = defines.direction.west
        }
      },

      heat_picture = apply_heat_pipe_glow
      {
        filename = "__base__/graphics/entity/nuclear-reactor/reactor-heated.png",
        width = 216,
        height = 256,
        scale = 0.5,
        shift = util.by_pixel(3, -6.5)
      },
    },

    connection_patches_connected =
    {
      sheet =
      {
        filename = "__base__/graphics/entity/nuclear-reactor/reactor-connect-patches.png",
        width = 64,
        height = 64,
        variation_count = 12,
        scale = 0.5
      }
    },

    connection_patches_disconnected =
    {
      sheet =
      {
        filename = "__base__/graphics/entity/nuclear-reactor/reactor-connect-patches.png",
        width = 64,
        height = 64,
        variation_count = 12,
        y = 64,
        scale = 0.5
      }
    },

    heat_connection_patches_connected =
    {
      sheet = apply_heat_pipe_glow
      {
        filename = "__base__/graphics/entity/nuclear-reactor/reactor-connect-patches-heated.png",
        width = 64,
        height = 64,
        variation_count = 12,
        scale = 0.5
      }
    },

    heat_connection_patches_disconnected =
    {
      sheet = apply_heat_pipe_glow
      {
        filename = "__base__/graphics/entity/nuclear-reactor/reactor-connect-patches-heated.png",
        width = 64,
        height = 64,
        variation_count = 12,
        y = 64,
        scale = 0.5
      }
    },

    vehicle_impact_sound = sounds.generic_impact,
    open_sound = sounds.machine_open,
    close_sound = sounds.machine_close,
    working_sound =
    {
      sound =
      {
        {
          filename = "__base__/sound/nuclear-reactor-1.ogg",
          volume = 0.55
        },
        {
          filename = "__base__/sound/nuclear-reactor-2.ogg",
          volume = 0.55
        }
      },
      --idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 0.3 },
      max_sounds_per_type = 3,
      fade_in_ticks = 4,
      fade_out_ticks = 20
    },

    meltdown_action =
    {
      type = "direct",
      action_delivery =
      {
        type = "instant",
        target_effects =
        {
          {
            type = "create-entity",
            entity_name = "atomic-rocket"
          }
        }
      }
    }
  }
})
