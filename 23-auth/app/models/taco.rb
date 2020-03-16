class Taco < ApplicationRecord
    belongs_to :truck
    validates :meat, presence: true
    validates :zest, numericality: { greater_than:0}
    validates :spicy, numericality: { greater_than:0}
end
