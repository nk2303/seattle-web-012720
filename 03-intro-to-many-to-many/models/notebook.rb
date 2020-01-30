# {page_count: 200 , owner_name: "Soundarya", material: "paper"},
class Notebook
    attr_reader :material
    attr_accessor :page_count, :owner_name 

    # @@notebooks = [ ]
    @@all = [ ]

    def initialize(notebook)
        @pages = notebook[:page_count]
        @owner_name = notebook[:owner_name]
        @material = notebook[:material]
        @@all.push(self)
    end

    def self.all
        @@notebooks
    end
end