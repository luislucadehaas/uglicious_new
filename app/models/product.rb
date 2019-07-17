class Product < ApplicationRecord
  belongs_to :subgroup
  belongs_to :farm
end
