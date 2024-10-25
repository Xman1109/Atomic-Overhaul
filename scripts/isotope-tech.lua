-- if player pics up "isotope-scrap" and has "isotope-scrap" in inventory, unlock the recipe "uranium-rod-recipe" (placeholder) and print a message for the entire force
script.on_event(defines.events.on_picked_up_item, function(event)
    local player = game.players[event.player_index]
    if not global.ao_scrap then
        if player.get_item_count("isotope-scrap") > 0 then -- Print a message in chat, be sure this doesn't happen every time and enable the technology
            game.print({"", {"chat-message.picked-up-isotope-scrap"}, "\n", {"chat-message.available-for-research"}})
            global.ao_scrap = true
            player.force.technologies["isotope-analysis"].enabled = true
        end
    end
end)
