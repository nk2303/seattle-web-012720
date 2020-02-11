class Food < ActiveRecord::Base
    has_many :foods_visitors
    has_many :visitors, through: :foods_visitors
end