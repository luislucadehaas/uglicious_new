class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # mount_uploader :photo, PhotoUploader
  has_many :farms
  has_many :products, through: :farms
  has_many :bookings
  has_many :reviews, through: :bookings
  has_many :products_as_customer, through: :bookings, source: :products
  validates :first_name, :last_name, :role, presence: true

  def farm
    self.farms.first
  end
end
