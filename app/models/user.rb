class User < ApplicationRecord
  has_many :user_products
  has_many :products, through: :user_products
  validates :name, presence: true
  validates :age, presence: true
end
