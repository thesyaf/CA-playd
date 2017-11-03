class CreateProfiles < ActiveRecord::Migration[5.1]
  def change
    create_table :profiles do |t|
      t.text :first_name
      t.text :last_name
      t.string :stripe_id
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
