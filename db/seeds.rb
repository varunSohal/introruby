# Thsi is for the products API is used 
require 'json'
require 'net/http'

uri = URI('https://fakestoreapi.com/products')
response = Net::HTTP.get_response(uri)
products = JSON.parse(response.body)

products.each do |row|
  Product.create(
    title: row["title"],
    price: row["price"],
    description: row["description"],
    category: row["category"]
  )
end
