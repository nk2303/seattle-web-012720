class Dinosaur

    # @@all = [ ]

    attr_accessor :name, :age, :height

    def initialize(name, age, height)
        @name =name
        @age = age
        @height = height
        # @@all << self
    end

    def self.all
        # @@all
        dinos = DB.execute("SELECT * FROM dinosaurs")
        dinos.map { |dino| Dinosaur.new(dino["name"], dino["age"], dino["height"]) } 
    end
end