class AddProfileToShops < ActiveRecord::Migration
  def change
    add_column :shops, :profile, :text
  end
end
