class Shop < ActiveRecord::Base
  mount_uploader :photo, PhotoUploader
  validates :name, :address, presence: true
  geocoded_by :address
  #after_validation :geocode, :if => :address_changed?
  after_validation :geocode

  has_many :users
  has_many :events

  paginates_per 10 #Kaminari 每頁5筆
  #scope :has_photo, -> { where('photo IS NOT NULL').order('updated_at DESC') }
  scope :has_photo, -> { where('photo IS NOT NULL').order('RAND()') }
  #default_scope { order('updated_at DESC') }
end
