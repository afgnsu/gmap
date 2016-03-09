class AddUserToInfos < ActiveRecord::Migration
  def change
    add_reference :infos, :user, index: true
    add_foreign_key :infos, :users
  end
end
