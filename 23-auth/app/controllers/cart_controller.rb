class CartController < ApplicationController

    def update 
        add_taco_to_cart(params[:tacos_id])
    end 

    def delet
        session.delete(:cart)
    end 
end
