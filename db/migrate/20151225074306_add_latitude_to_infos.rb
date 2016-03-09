class AddLatitudeToInfos < ActiveRecord::Migration
  def change
    add_column :infos, :latitude, :float
  end
end
