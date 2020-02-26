class Orchestramember < ApplicationRecord
    belongs_to :orchestra
    belongs_to :member
end
