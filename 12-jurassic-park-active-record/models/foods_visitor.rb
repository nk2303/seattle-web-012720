class FoodsVisitor < ActiveRecord::Base
    belongs_to :visitor
    belongs_to :food
end