# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'deleting seeds'

Flat.destroy_all

puts 'creating new flats'

6.times do
  Flat.create!(
    name: Faker::Games::Fallout.location,
    address: Faker::Address.street_address,
    picture_url: 'https://picsum.photos/900/600',
    description: Faker::Lorem.paragraph_by_chars(number: 330, supplemental: false),
    price_per_night: rand(50..150),
    number_of_guests: rand(1..4)
  )
end
