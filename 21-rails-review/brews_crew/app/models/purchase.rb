class Purchase < ApplicationRecord
    has_many :brew_purchases 
    has_many :brews, through: :brew_purchases
    validates :customer_name, presence: true
end
