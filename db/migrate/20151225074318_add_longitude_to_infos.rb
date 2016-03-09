class AddLongitudeToInfos < ActiveRecord::Migration
  def change
    add_column :infos, :longitude, :float
  end
end
