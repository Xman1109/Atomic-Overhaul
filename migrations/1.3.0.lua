for index, force in pairs(game.forces) do
    local technologies = force.technologies
    local recipe = force.recipes
    if settings.startup["old-graphite-fuel"].value == false then
        if technologies["uranium-processing"].researched then
            if settings.startup["ao-complexity-level"].value ~= "simple" then
                technologies["non-moderated-fuel-processing"].researched = true
                recipe["empty-fuel-cell-recipe"].enabled = true
                recipe["non-moderated-fuel-cell-recipe"].enabled = true
                technologies["non-moderated-fuel-reprocessing"].researched = true
                recipe["non-moderated-fuel-reprocessing"].enabled = true
                technologies["graphite-cooking"].researched = true
                recipe["graphite-furnace-recipe"].enabled = true
            end
            recipe["uranium-processing"].enabled = true
            recipe["centrifuge"].enabled = true
            recipe["heat-furnace-recipe"].enabled = true
        end
        if settings.startup["ao-complexity-level"].value ~= "simple" then
            if recipe["graphite-fuel-cell-recipe"] then
                recipe["graphite-fuel-cell-recipe"].enabled = false
            end
            if recipe["graphite-fuel-reprocessing"] then
                recipe["graphite-fuel-reprocessing"].enabled = false
            end
            if recipe["graphite-recipe"] then
                recipe["graphite-recipe"].enabled = false
            end

            if technologies["ao-graphite-processing"] and technologies["graphite-processing"] then
                technologies["ao-graphite-processing"].researched = false
                technologies["graphite-fuel-reprocessing"].researched = false
                technologies["ao-graphite-processing"].enabled = false
                technologies["graphite-fuel-reprocessing"].enabled = false
            end
        end
    end
end