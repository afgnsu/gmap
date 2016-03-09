class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :title
      t.string :content
      t.date :end

      t.timestamps null: false
    end
  end
end
