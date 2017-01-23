class RenameTableOwnerProfile < ActiveRecord::Migration
  def change
    rename_table :owner_profiles, :owners
  end
end
