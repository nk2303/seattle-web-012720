class Food

    # @@all = [ ]
    attr_accessor :name

    def initialize(input)
        @name =input["name"]
        @id = input["id"]
    end

    def self.all
        # @@all
    end

    #READ ( select * with parameter)

    #CREATE ( create table)

    #CREATE (insert new data)

    #UPDATE ( update a specific column)

    #UPDATE ( update specific data)

    #DELETE  ( drop a table)

    #DELETE ( delete specific rows)
end