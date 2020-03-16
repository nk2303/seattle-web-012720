class Customer < ApplicationRecord
    has_many :orders
    has_many :brews, through: :orders
    validates :name, presence: true
    validates :name, uniqueness: true
end
