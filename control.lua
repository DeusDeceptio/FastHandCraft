-- control.lua
script.on_init(function()
  for _, player in pairs(game.players) do
    apply_crafting_speed(player)
  end
end)

script.on_configuration_changed(function()
  for _, player in pairs(game.players) do
    apply_crafting_speed(player)
  end
end)

script.on_event(defines.events.on_player_crafted_item, function(event)
  local player = game.get_player(event.player_index)
  apply_crafting_speed(player)
end)

function apply_crafting_speed(player)
  local speed = settings.global["fast-hand-craft-speed"].value
  player.character_crafting_speed_modifier = speed - 1.0
end
