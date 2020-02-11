class Visitor < ActiveRecord::Base
    has_many :dinosaurs_visitors
    has_many :dinosaurs,  through: :dinosaurs_visitors
    has_many :foods_visitors
    has_many :foods, through: :foods_visitors
    
    def eat_food(food)
        FoodsVisitor.create(food_id: food.id, visitor_id: self.id)
    end
end