class Orchestra < ApplicationRecord
    belongs_to :conductor
    has_many :orchestramembers
    has_many :members, through: :orchestramembers

    validates :name, presence: true
end
