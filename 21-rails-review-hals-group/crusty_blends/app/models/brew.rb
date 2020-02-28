class Brew < ApplicationRecord
    has_many :orders
    has_many :customers, through: :orders

    def all_customers
        
    end
end
