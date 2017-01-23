class CreateOwnerProfiles < ActiveRecord::Migration
  def change
    create_table :owner_profiles do |t|
      t.integer :user_id
      t.text :content

      t.timestamps null: false
    end
  end
end
