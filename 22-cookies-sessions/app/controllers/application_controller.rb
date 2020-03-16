class ApplicationController < ActionController::Base
    def cart
        session[:cart] ||= {}
    end 

    def add_taco_to_cart(item_id)
        
        if cart[item_id]
            cart[item_id] += 1
        else  
            cart[item_id] = 1
        end 
    end 
    
    def total_item_count(item)
        cart[item]
    end 
    
    def get_items_from_cart
        
        @cart_items = Taco.find(cart.keys)
        @total = 0
        @cart_items.each do |taco|
                item_price = cart[taco.id.to_s] * taco.price
                taco.amount = cart[taco.id.to_s]
                @total += item_price
        end 
    end 
end
