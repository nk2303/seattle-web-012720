class Brew < ApplicationRecord
    has_many :brew_purchases 
    has_many :purchases, through: :brew_purchases
    validates :blend_name, presence: true, uniqueness: true
    validates :origin, presence: true

    def self.strongest 
        
        Brew.all.max_by{|brew| brew.strength}
    end 
end
