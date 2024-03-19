class Device < ApplicationRecord
  validates :brand, presence: true
  validates :model, presence: true
  validates :price, presence: true



  has_many :comments
  has_many :device_dogs
  has_many :dogs, through: :device_dogs
end
