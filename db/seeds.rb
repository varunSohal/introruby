# products API
require 'json'
require 'net/http'
require 'faker'

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


# Generate Faker data for users table
100.times do
  User.create(
    name: Faker::Name.unique.name,
    age: Faker::Number.between(from: 18, to: 100),
    username: Faker::Internet.unique.username(specifier: 8..12),
    email: Faker::Internet.unique.email
  )
end
uri = URI('https://freetestapi.com/api/v1/dogs')
response = Net::HTTP.get_response(uri)
dogs = JSON.parse(response.body)

dogs.each do |row|
  Dog.create(
    name: row["name"],
    size: row["size"],
    origin: row["origin"],
    color: row["color"]
  )
end
