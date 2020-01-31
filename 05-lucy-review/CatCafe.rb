class CatCafe

    @@all = []

    def initialize(name)
        @cafe_name = name
        @@all << self
    end

    def self.all 
        @@all
    end

    # listing all cats that belong to that cafe

    def cats_at_this_cafe
        Cat.all.select do |cat| 
            cat.cafe == self 
        end
    end

    def hang_out
        puts "MEOW"
    end

    def breeds_of_cats_at_this_cafe
        cats_at_this_cafe.map {|cat| cat.breed }.uniq
    end
    

end

