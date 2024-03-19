require 'json'
require 'net/http'

uri = URI('https://freetestapi.com/api/v1/mobiles')
response = Net::HTTP.get_response(uri)
devices = JSON.parse(response.body)

# Check if data is retrieved from the API
puts "Retrieved #{devices.size} devices from the API"

devices.each do |device_data|
  puts "Creating device: #{device_data['brand']} - #{device_data['model']}"
  device = Device.create(
    brand: device_data["brand"],
    model: device_data["model"],
    price: device_data["price"],
    image: device_data["image"]
  )
  # Check if device creation is successful
  if device.persisted?
    puts "Device created successfully!"
  else
    puts "Failed to create device: #{device.errors.full_messages.join(', ')}"
  end
end

# Generate Faker data for users table
puts "Generating Faker data for users table"
100.times do
  user = User.create(
    name: Faker::Name.unique.name,
    age: Faker::Number.between(from: 18, to: 100),
    username: Faker::Internet.unique.username(specifier: 8..12),
    email: Faker::Internet.unique.email
  )
  # Check if user creation is successful
  if user.persisted?
    puts "User created successfully: #{user.username}"
  else
    puts "Failed to create user: #{user.errors.full_messages.join(', ')}"
  end
end

uri = URI('https://freetestapi.com/api/v1/dogs')
response = Net::HTTP.get_response(uri)
dogs = JSON.parse(response.body)

# Check if data is retrieved from the API
puts "Retrieved #{dogs.size} dogs from the API"

dogs.each do |dog_data|
  puts "Creating dog: #{dog_data['name']}"
  dog = Dog.create(
    name: dog_data["name"],
    size: dog_data["size"],
    origin: dog_data["origin"],
    color: dog_data["color"]
  )
  # Check if dog creation is successful
  if dog.persisted?
    puts "Dog created successfully!"
  else
    puts "Failed to create dog: #{dog.errors.full_messages.join(', ')}"
  end
end
