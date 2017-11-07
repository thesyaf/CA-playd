json.extract! wantedgame, :id, :game_api_id, :game_name, :game_image, :game_owned, :user_id, :created_at, :updated_at
json.url wantedgame_url(wantedgame, format: :json)
