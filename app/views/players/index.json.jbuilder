json.array!(@players) do |player|
  json.extract! player, :id, :nombre, :casilla
  json.url player_url(player, format: :json)
end
