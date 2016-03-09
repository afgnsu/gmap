class CreateInfos < ActiveRecord::Migration
  def change
    create_table :infos do |t|
      t.string :name
      t.string :telphone
      t.string :address
      t.string :website
      t.text :note

      t.timestamps null: false
    end
  end
end
