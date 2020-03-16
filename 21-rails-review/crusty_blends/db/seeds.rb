# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


10.times do
    Customer.create({name: Faker::DcComics.villain})
end

700.times do
    Brew.create({blend_name: Faker::Coffee.blend_name, origin: Faker::Coffee.origin, notes: Faker::Coffee.notes, strength: rand(1..100)})
end

15.times do
    Order.create({brew_id: Brew.all.sample.id, customer_id: Customer.all.sample.id, price: (rand(1.0...100.0)).round(2)})
end