class CreateUsersProfiles < ActiveRecord::Migration[5.0]
  def change
    create_table :users_profiles do |t|
      t.references :user, foreign_key: true
      t.references :profile, foreign_key: true

      t.timestamps
    end
  end
end
