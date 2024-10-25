local uf_results
if settings.startup["ao-complexity-level"].value == "simple" then
    multiply_recipe(data.raw["recipe"]["nuclear-fuel-reprocessing"], 4)
    uf_results = {
        {
            type = "item",
            name = "fissile-products",
            amount_min = 1,
            amount_max = 2
        },
        mods["SchallUraniumProcessing"] and {
            type = "item",
            name = "uranium-concentrate",
            amount = 19
        }
        or {
            type = "item",
            name = "uranium-ore",
            amount = 190
        }
    }
else
    uf_results = { {
        type = "item",
        name = "plutonium",
        amount_min = 1,
        amount_max = 3
    }, {
        type = "item",
        name = "uranium-238",
        amount = 3
    }, {
        type = "item",
        name = "nuclear-waste",
        amount = 5
    }, {
        type = "item",
        name = "research-data",
        amount_min = 1,
        amount_max = 3
    } }

    data.raw["recipe"]["uranium-fuel-cell"].ingredients =
    {
        {type = "item", name = "uranium-fuel-rod", amount = 10 },
        {type = "item", name = "empty-fuel-cell", amount = 10 }
    }
    data.raw["recipe"]["uranium-fuel-cell"].category = "centrifuging"
end

regroup("r", "uranium-processing", "AO", "resources", "b")
regroup("r", "nuclear-fuel-reprocessing", "AO", "reprocessing", "b")
regroup("r", "nuclear-fuel", "AO", "fuel", "a")
regroup("r", "uranium-fuel-cell", "AO", "fuel-cells", "b")
modifyResults("nuclear-fuel-reprocessing", uf_results, "replace")
if mods["SchallUraniumProcessing"] then
    regroup("r", "uranium-concentrate", "AO", "resources")
    regroup("r", "uranium-low-enriched", "AO", "resources")
    regroup("r", "uranium-235", "AO", "resources")
end
