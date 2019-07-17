class Product < ApplicationRecord
  belongs_to :subgroup
  belongs_to :farm
  has_many :bookings
  mount_uploader :photo, PhotoUploader
end
