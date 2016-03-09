class AddPhotoToInfos < ActiveRecord::Migration
  def change
    add_column :infos, :photo, :string
  end
end
