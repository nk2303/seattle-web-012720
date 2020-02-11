# require_relative 'config/environment.rb'

#CREATE -> Create tables : Creating new information for the schema.
# Dinosaur.create_table
# Visitor.create_table
# DinosaursVisitor.create_table
# Food.create_table
# FoodsVisitor.create_table
# DB.execute("CREATE TABLE visitors(id INTEGER PRIMARY KEY AUTOINCREMENT, name TEXT, age INTEGER, height INTEGER)")
# DB.execute("CREATE TABLE dinosaurs_visitors(id INTEGER PRIMARY KEY AUTOINCREMENT, dinosaur_id INTEGER, visitor_id INTEGER)")
# DB.execute("CREATE TABLE foods(id INTEGER PRIMARY KEY AUTOINCREMENT, name TEXT)")
# DB.execute("CREATE TABLE foods_visitors(id INTEGER PRIMARY KEY AUTOINCREMENT, food_id INTEGER, visitor_id INTEGER)")

10.times do
    #CREATE for our data
    # Visitor.new(Faker::FunnyName.name, Random.rand(100), Random.rand(6.0))
    Visitor.create(name: Faker::FunnyName.name, age: Random.rand(100), height: Random.rand(6.0))
end

dinos = [ "Tyrannosaurus Rex", 
    "Triceratops", 
    "Velociraptor",
    "Stegosaurus",
    "Spinosaurus",
    "Archaeopteryx",
    "Brachiosaurus",
    "Allosaurus",
    "Apatosaurus",
    "Dilophosaurus",
]

dinos.each do |dino_name|
    #CREATE
    # sql = "INSERT INTO dinosaurs(name, age, height) VALUES(?,?,?)"
    # DB.execute(sql, dino_name , Random.rand(100000000), Random.rand(100.00))
    Dinosaur.create(name: dino_name , age: Random.rand(100000000), height: Random.rand(100.00))
end

foods = ["hotdogs", "cotton_candy", "burgers", "fries", "fried_chicken"]
foods.each do |food_name|
    #CREATE
    # sql = "INSERT INTO foods(name) VALUES(?)"
    # DB.execute(sql, food_name)
    Food.create(name: food_name, calories: 100, age: 0, price: 3.40)
end

FoodsVisitor.create(visitor_id: Visitor.all.sample.id, food_id: Food.all.sample.id)

# binding.pry