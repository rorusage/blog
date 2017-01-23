class CreateAccountOwners < ActiveRecord::Migration
  def change
    create_table :account_owners do |t|
      t.integer :user_id
      t.text :content

      t.timestamps null: false
    end
  end
end
