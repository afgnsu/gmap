class AddShopToEvents < ActiveRecord::Migration
  def change
    add_reference :events, :shop, index: true
    add_foreign_key :events, :shops
  end
end
