class CreateOwnedgames < ActiveRecord::Migration[5.1]
  def change
    create_table :ownedgames do |t|
      t.string :game_api_id
      t.string :game_name
      t.string :game_image
      t.string :game_owned
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
