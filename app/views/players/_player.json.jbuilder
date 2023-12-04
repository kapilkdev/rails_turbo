json.extract! player, :id, :name, :stats, :created_at, :updated_at
json.url player_url(player, format: :json)
