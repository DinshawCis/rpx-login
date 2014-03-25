class CreateUserProfiles < ActiveRecord::Migration
  def change
    create_table :user_profiles do |t|
      t.string :name
      t.string :profession

      t.timestamps
    end
  end
end
