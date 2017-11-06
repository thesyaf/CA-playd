json.extract! ownedgame, :id, :game_api_id, :game_name, :game_image, :game_owned, :created_at, :updated_at
json.url ownedgame_url(ownedgame, format: :json)
