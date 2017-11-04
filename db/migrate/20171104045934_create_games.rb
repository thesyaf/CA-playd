class CreateGames < ActiveRecord::Migration[5.1]
  def change
    create_table :games do |t|
      t.text :api_game_id
      t.string :name
      t.text :image
      t.text :platform

      t.timestamps
    end
  end
end
