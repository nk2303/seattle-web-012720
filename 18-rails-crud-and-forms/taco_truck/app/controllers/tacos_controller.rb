class TacosController < ApplicationController
    def index 
        @tacos = Taco.all
    end 
    
    def show
        @taco = Taco.find_by_id(params[:id])
    end 

    def new 
        @taco = Taco.new
    end 

    def create
        @taco = Taco.create(taco_params)
        redirect_to tacos_path

    end 

    def edit
        @taco = Taco.find_by_id(params[:id])
    end 

    def update
        @taco = Taco.find_by_id(params[:id])
        @taco.update(taco_params)
        redirect_to tacos_path
        
    end 

    private 

        def taco_params
            params.require(:taco).permit(:meat,:zest,:spicy)
        end
end
