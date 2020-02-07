class Visitor < ActiveRecord::Base
    has_many :dinosaurs_visitors
    has_many :dinosaurs,  through: :dinosaurs_visitors
    # @@all = [ ]
    # attr_accessor :name, :age, :height

    # def initialize(input)
    #     @name = input["name"]
    #     @age = input["age"]
    #     @height = input["height"]
    #     @id = input["id"]
    #     @@all << self
    # end

    # def self.all
    #     @@all
    # end

    # #READ (select * with parameter)
    # def self.select(id)
    #     sql = "SELECT * FROM visitors WHERE id = ? "
    #     visitor = DB.execute(sql, id)
    #     # binding.pry
    #     Visitor.new(visitor[0])
    # end

    # #CREATE (create table)
    # def self.insert_data(name, age, height)
    #     sql = "INSERT INTO visitors(name, age, height) VALUES(?,?,?)"
    #     DB.execute(sql, name, age, height)
    #     last_row_sql = "SELECT last_insert_rowid() AS last_row FROM visitors"
    #     row = DB.execute(last_row_sql)
    #     Visitor.select(row[0]["last_row"])
    #     # Visitor.new(name, age, height)
    # end

    # def update_name(name)
    #     sql = "UPDATE visitors SET name = ?  WHERE id = ?"
    #     DB.execute(sql, name, self.id)
    # end
    # #CREATE (insert new data)

    # #UPDATE (update a specific column)

    # #UPDATE (update specific data)

    # #DELETE  (drop a table)

    # #DELETE ( delete specific rows)
    # def delete
    #     sql = "DELETE FROM visitors WHERE id = ?"
    #     DB.execute(sql, self.id)
    # end
end