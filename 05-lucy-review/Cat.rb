class Cat 

    @@all = []

    def initialize(name, breed)
        @cat_name = name
        @breed = breed
        @cafe = nil
        @@all << self
    end

    def self.all
        @@all
    end

    def cat_name 
        @cat_name
    end

    def cat_name=(name)
        @cat_name = name
    end

    def breed 
        @breed
    end

    def cafe 
        @cafe 
    end

    def cafe=(cafe)
        @cafe = cafe
    end

    def self.get_cats_by_breed(breed)
        Cat.all.select {|cat| cat.breed == breed}
    end


end
