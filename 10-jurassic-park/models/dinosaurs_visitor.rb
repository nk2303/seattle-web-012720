class DinosaursVisitor

    @@all = [ ]
    attr_accessor :name, :age, :height

    def initialize(name, age, height)
        @name =name
        @age = age
        @height = height
        @@all << self
    end

    def self.all
        @@all
    end
end