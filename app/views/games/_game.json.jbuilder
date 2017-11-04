json.extract! game, :id, :api_game_id, :name, :image, :platform, :created_at, :updated_at
json.url game_url(game, format: :json)
