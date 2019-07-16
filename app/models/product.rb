class Product < ApplicationRecord
  belongs_to :category
  belongs_to :farm

  mount_uploader :photo, PhotoUploader
end
