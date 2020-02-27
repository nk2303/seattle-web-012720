class TrucksController < ApplicationController
        def index
            @trucks = Truck.all
        end 
    
        def show
            @truck = Truck.find_by_id(params[:id])
        end 
    
        def new
            @truck = Truck.new
        end 
        
        def create 
            @truck = Truck.create(truck_params)
            redirect_to @truck
        end 
    
        def edit
            @truck = Truck.find_by_id(params[:id])
    
        end 
    
        def update
            @truck = Truck.find(params[:id])
            @truck.update(truck_params)
            redirect_to @truck
        end
    
        private 
    
        def truck_params
            params.require(:truck).permit(:name, :location)
    
        end 
    
end
