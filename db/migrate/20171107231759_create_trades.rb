class CreateTrades < ActiveRecord::Migration[5.1]
  def change
    create_table :trades do |t|
      t.references :ownedgame, foreign_key: true
      t.references :wantedgame, foreign_key: true

      t.timestamps
    end
  end
end
