class TacosController < ApplicationController
    def index 
        @tacos = Taco.all
        get_items_from_cart
    end 
    
    def show
        @taco = Taco.find_by_id(params[:id])
        
    end 

    def new 
        @taco = Taco.new
        @trucks = Truck.all
    end 

    def create
        
        @taco = Taco.create(taco_params)
        if @taco.valid?
            redirect_to tacos_path
        else
            flash[:messages] = @taco.errors.full_messages
            redirect_to new_taco_path
        end 

    end 

    def edit
        @taco = Taco.find_by_id(params[:id])
        @trucks = Truck.all

    end 

    def update
        @taco = Taco.find_by_id(params[:id])
        @taco.update(taco_params)
        redirect_to tacos_path
        
    end 

    private 

        def taco_params
            params.require(:taco).permit(:meat,:zest,:spicy, :truck_id)
        end
end
