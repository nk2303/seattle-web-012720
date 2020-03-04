# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Truck.create(name:"tacos4us",location:"seattle")
Truck.create(name:"tacos?",location:"portland")
Truck.create(name:"7",location:"NYC")

Taco.create(meat:"chicken", zest:2, spicy:4, price:10, truck_id:1)
Taco.create(meat:"pork", zest:5, spicy:1, price:12, truck_id:2)
Taco.create(meat:"beef", zest:4, spicy:5, price:13, truck_id:3)