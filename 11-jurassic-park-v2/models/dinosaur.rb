class Dinosaur

    # @@all = [ ]

    attr_accessor :name, :age, :height

    def initialize(input)
        # {name: "Soundarya", age: 30, height: 05.7}
        @name =input["name"]
        @age = input["age"]
        @height = input["height"]
        @id = input["id"]
        # @@all << self
    end

    #READ ( select * )
    def self.all
        # @@all
        dinos = DB.execute("SELECT * FROM dinosaurs")
        dinos.map { |dino| Dinosaur.new(dino) } 
    end

    #READ ( select * with parameter)

    #CREATE ( create table)
    def self.create_table
        sql = "CREATE TABLE dinosaurs(id INTEGER PRIMARY KEY AUTOINCREMENT, 
                name TEXT, 
                age INTEGER, 
                height INTEGER)"
        DB.execute(sql)
    end

    #CREATE (insert new data)

    #UPDATE ( update a specific column)

    #UPDATE ( update specific data)

    #DELETE  ( drop a table)

    #DELETE ( delete specific rows)

    def all_my_visitors
        DinosaursVisitor.all
        SELECT DinosaursVisitor.dinosaur_id ==  self.id
        
    end
end