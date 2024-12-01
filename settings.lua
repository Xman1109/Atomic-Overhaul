data:extend({
    {
        type = "bool-setting",
        name = "ao-debug",
        setting_type = "startup",
        default_value = false,
        order = "a"
    },
    {
        type = "string-setting",
        name = "ao-complexity-level",
        setting_type = "startup",
        allowed_values = { "full", "simple" },
        --allowed_values = { "full", "advanced", "simple" },
        default_value = "full",
        order = "b"
    },
    {
        type = "bool-setting",
        name = "ao-breeder",
        setting_type = "startup",
        default_value = false,
        order = "c"
    },
    {
        type = "bool-setting",
        name = "thorium-wrd",
        setting_type = "startup",
        default_value = false,
        order = "d"
    },
    {
        type = "bool-setting",
        name = "old-graphite-fuel",
        setting_type = "startup",
        default_value = false,
        order = "e",
        localised_description = {"settings-deprecated.old-graphite-fuel"},
        hidden = true -- hidden because it's deprecated
    },
    {
        type = "string-setting",
        name = "heat-algo-mode",
        setting_type = "startup",
        default_value = "advanced",
        allowed_values = { "off", "basic", "advanced" },
        order = "f"
    },
    {
        type = "string-setting",
        name = "heat-algo-searchterm",
        setting_type = "startup",
        default_value = "plate, brick",
        allow_blank = true,
        order = "g"
    },
    {
        type = "bool-setting",
        name = "heat-accumulator", -- out of order because it's a hidden setting
        setting_type = "startup",
        default_value = true,
        order = "h",
        hidden = true
    },
    {
        type = "bool-setting",
        name = "ao-kovarex-enabled",
        setting_type = "startup",
        default_value = true,
        order = "i",
        hidden = true
    },
    {
        type = "bool-setting",
        name = "ao-isotope-update", -- 1.4.0
        setting_type = "startup",
        default_value = true,
        order = "j"
    },
    {
        type = "bool-setting",
        name = "se-addon",
        setting_type = "startup",
        default_value = true,
        order = "z"
    },
    {
        type = "bool-setting",
        name = "ruins-addon",
        setting_type = "startup",
        default_value = false,
        order = "za",
        hidden = true
    },
    {
        type = "string-setting",
        name = "fuel-cell-ingredient",
        setting_type = "startup",
        default_value = "Advanced Fuel Cell",
        allowed_values = { "Advanced Fuel Cell", "Normal Fuel Cell" },
        order = "za"
    }
})
