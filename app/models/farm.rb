class Farm < ApplicationRecord
  mount_uploader :photo, PhotoUploader
  belongs_to :user
  has_many :products
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
