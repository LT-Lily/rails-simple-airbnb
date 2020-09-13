# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "faker"

puts "Cleaning database"
Flat.destroy_all

puts "Creating flats..."

5.times do
    flat = Flat.new(
        name: Faker::Address.street_name,
        address: Faker::Address.full_address,
        description: Faker::Restaurant.description ,
        price_per_night: 350,
        number_of_guests: rand(1..6)
    )
    flat.save!
end

puts "Created #{Flat.count} flat(s)"