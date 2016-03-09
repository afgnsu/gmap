class Event < ActiveRecord::Base
  mount_uploader :photo, PhotoUploader
  has_many :users
  belongs_to :shop
  paginates_per 2 #Kaminari 每頁5筆

  default_scope { where(['end > ?', DateTime.now]) }
end
