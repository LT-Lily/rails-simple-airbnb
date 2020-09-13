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

    Flat.create!(
        name: "Light & Spacious Garden Flat London",
        address: Faker::Address.full_address,
        description: "A lovely summer feel for this spacious garden flat. Two double bedrooms, open plan living area, large kitchen and a beautiful conservatory",
        price_per_night: 350,
        number_of_guests: rand(1..6)
    )
    
    Flat.create!(
        name: "Stylish House Close To River",
        address: Faker::Address.full_address,
        description: "Cosy and quiet" ,
        price_per_night: 350,
        number_of_guests: rand(1..6)
    )
    
    Flat.create!(
        name: "Surrounded by beutiful Greenary",
        address: Faker::Address.full_address,
        description: "5 minute walk to the train station and 3 minutes to catch a bus." ,
        price_per_night: 350,
        number_of_guests: rand(1..6)
    )
    
    Flat.create!(
        name: "Beautiful City View in a Contemporary Apartment",
        address: Faker::Address.full_address,
        description: "Easy to access Melbourne's festivities.",
        price_per_night: 350,
        number_of_guests: rand(1..6)
    )
    
    Flat.create!(
        name: "Country Style Farm House",
        address: Faker::Address.full_address,
        description: "Frolic on the fields.",
        price_per_night: 350,
        number_of_guests: rand(1..6)
    )
    
puts "Created #{Flat.count} flat(s)"