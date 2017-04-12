# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

20.times do
  rest = Restaurant.new
  rest.name = Faker::Hipster.words(3).join(" ").capitalize
  rest.address = Faker::Address.street_address
  rest.phone = Faker::PhoneNumber.phone_number
  rest.category = ["chinese", "italian", "japanese", "french", "belgian"].sample
  rest.save
end
