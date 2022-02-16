# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'cleaning the db'
Restaurant.destroy_all

puts 'creating 10 models'
restaurants = []
5.times do
  restaurant = Restaurant.create!(
    name:Faker::Restaurant.name,
    address: Faker::Address.full_address,
    category: %w[chinese italian japanese french belgian].sample,
    phone_number: Faker::PhoneNumber.cell_phone
  )
  restaurants << restaurant
end

restaurants.each do |restaurant|
  3.times do
    review = Review.create!(
      rating: rand(0..5).to_i,
      content: Faker::Restaurant.review,
      restaurant_id: restaurant.id
    )
    puts "rating #{review.id} was create"
  end
end

puts "All done 😃"
