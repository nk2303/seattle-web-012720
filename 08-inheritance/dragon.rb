require './creature'

class Dragon < Creature

    attr_accessor :color
    
    @@all = []

    def initialize(age, name, color)
        super( age , name )
        @color = color
        @@all << self
    end

    def self.all
        @@all
    end

    def breathe_fire
        puts "RAAWRRRR (fire goes here)"
    end

    def sleep
        puts "I'm slep for 10,000 years"
    end


end