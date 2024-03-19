class Dog < ApplicationRecord
  validates :name, presence: true
  validates :size, presence: true
  validates :origin, presence: true
end
