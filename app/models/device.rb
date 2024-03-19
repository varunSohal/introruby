class Device < ApplicationRecord
  validates :brand, presence: true
  validates :model, presence: true
  validates :price, presence: true
  has_many :comments
end
