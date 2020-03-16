class CartController < ApplicationController

    def update
        
        add_taco_to_cart(params[:tacos_id])
        
        # cart = {}
        # if cart[params[:taco_id]] 
        #     cart[params[:taco_id]] +=1
        # else 
        #     cart[params[:taco_id]] = 1
        # end 
        # cart = {}
        # cart << {}
    end 

    def delet
        session.delete(:cart)
    end 
end
