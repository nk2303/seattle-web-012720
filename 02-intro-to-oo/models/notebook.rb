# {page_count: 200 , owner_name: "Soundarya", material: "paper"},
class Notebook
    attr_reader :material
    attr_accessor :page_count, :owner_name 

    @@notebooks = [ ]

    def initialize(notebook)
        @pages = notebook[:page_count]
        @owner_name = notebook[:owner_name]
        @material = notebook[:material]
        @@notebooks.push(self)
    end

    def self.notebooks
        @@notebooks
    end
end