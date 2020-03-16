class BrewPurchase < ApplicationRecord
    belongs_to :brew
    belongs_to :purchase 
end
