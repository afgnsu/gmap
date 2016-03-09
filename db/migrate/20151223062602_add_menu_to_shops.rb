class AddMenuToShops < ActiveRecord::Migration
  def change
    add_column :shops, :menu, :text
  end
end
