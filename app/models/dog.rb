class Dog < ApplicationRecord
  validates :name, presence: true
  validates :size, presence: true
  validates :origin, presence: true
  has_many :device_dogs
  has_many :devices, through: :device_dogs
end
