class Booking < ApplicationRecord
  belongs_to :product
  belongs_to :user
  has_many :reviews
  # validates :status, inclusion: { "pending",  "ready for pickup", "completed" }
end
