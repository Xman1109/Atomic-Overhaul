-- this script replaces the nuclear fuel reprocessing recipe with a custom one
if script.active_mods["Krastorio2"] and script.active_mods["space-exploration"] then
    script.on_init(
        function()
            for index, force in pairs(game.forces) do
                local technologies = force.technologies
                local recipe = force.recipes
                if technologies["nuclear-fuel-reprocessing"].researched then
                    recipe["ao-nuclear-fuel-reprocessing"].enabled = true
                end
            end
        end)
end

if script.active_mods["bobplates"] then
    script.on_init(
        function()
            for index, force in pairs(game.forces) do
                local technologies = force.technologies
                local recipe = force.recipes
                if recipe["nuclear-fuel-reprocessing"].enabled then
                    technologies["non-moderated-fuel-reprocessing"].enabled = true
                    technologies["graphite-cooking"].enabled = true
                    technologies["uranium-processing"].enabled = true
                    technologies["non-moderated-fuel-processing"].enabled = true
                end
            end
        end)
end

if script.active_mods["bzcarbon"] then
    script.on_init(
        function()
            for index, force in pairs(game.forces) do
                local technologies = force.technologies
                if technologies["graphite-cooking"].researched then
                    technologies["graphite-processing"].researched = true
                end
            end
        end)
end
