class AddUserToShops < ActiveRecord::Migration
  def change
    add_reference :shops, :user, index: true
    add_foreign_key :shops, :users
  end
end
