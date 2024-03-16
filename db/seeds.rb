# products API
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
# for devices
uri = URI('https://freetestapi.com/api/v1/mobiles')
response = Net::HTTP.get_response(uri)
devices = JSON.parse(response.body)

devices.each do |row|
  Device.create(
    brand: row["brand"],
    model: row["model"],
    price: row["price"],
    image: row["image"]
  )
end
