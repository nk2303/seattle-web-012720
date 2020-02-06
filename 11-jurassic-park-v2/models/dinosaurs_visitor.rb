class DinosaursVisitor

    @@all = [ ]
    attr_accessor :dinosaur_id, :visitor_id

    def initialize(input)
        @dinosaur_id =input["dinosaur_id"]
        @visitor_id = input["visitor_id"]
        @id = input["id"]
        # @@all << self
    end

    def self.all
        @@all
    end

    #READ ( select * with parameter)

    #CREATE ( create table)

    #CREATE (insert new data)

    #UPDATE ( update a specific column)

    #UPDATE ( update specific data)

    #DELETE  ( drop a table)

    #DELETE ( delete specific rows)
end