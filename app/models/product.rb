class Product < ApplicationRecord
  has_many :user_products
  belongs_to :category
  has_many :users, through: :user_products
  validates :title, presence: true
  validates :price, presence: true
end
