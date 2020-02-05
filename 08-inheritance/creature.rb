class Creature

    attr_accessor :age, :name

    @@all = []

    def initialize(age, name)
        @age = age
        @name = name 
        @@all << self
    end

    def self.all
        @@all
    end

    def gestate
        puts "I'm gestating"
    end

    def sleep 
        puts "zzzzzzzzz"
    end

    def eat_someone(person)
        puts "#{person} tastes good"
    end

end