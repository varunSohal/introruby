namespace :fake_products do
  desc "Generate fake products and associate them with users"
  task fake_products: :environment do
    User.all.each do |user|
      title = Faker::Lorem.sentence(word_count: 3)
      price = Faker::Commerce.price(range: 10.0..1000.0)
      description = Faker::Lorem.paragraph(sentence_count: 1)
      category = Category.all.sample

      product = user.products.create(title: title, price: price, description: description, category: category)

      puts "Created product '#{product.title}' for user #{user.id}"
    end
  end
end
