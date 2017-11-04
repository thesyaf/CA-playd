class AddAvatardataToProfiles < ActiveRecord::Migration[5.1]
  def change
    add_column :profiles, :avatar_data, :text
    add_column :profiles, :username, :text
  end
end
