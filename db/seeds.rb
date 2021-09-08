# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

20.times do
  Restaurant.create(
    name: Faker::Restaurant.name,
    category: ["chinese", "italian", "japanese", "french", "belgian"].sample,
    address: Faker::Address.full_address
  )
end

Restaurant.all.each do |restaurant|
  10.times do
    Review.create!(
      rating: rand(0..5),
      content: Faker::Restaurant.review,
      restaurant: restaurant
    )
  end
end
