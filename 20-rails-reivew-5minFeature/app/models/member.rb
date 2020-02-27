class Member < ApplicationRecord
    has_many :orchestramembers
    has_many :orchestras, through: :orchestramembers
    has_many :instruments
    validates :name, presence: true
    validates :orchestra_ids, length:{minimum: 1}
    
end
