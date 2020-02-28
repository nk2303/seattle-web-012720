class BrewsController < ApplicationController
    def index
        @brews = Brew.all
    end

    def show
        @brew = Brew.find(params[:id])
    end 

    def new
        @brew = Brew.new
    end

    def create
        @brew = Brew.create(brew_params)
        if @brew.valid?
            redirect_to @brew
        else 
            flash[:notice] = @brew.errors.full_messages
            render :new
        end 
    end 

    def edit
        @brew = Brew.find(params[:id])
    end

    def update
        @brew = Brew.find(params[:id])
        @brew.update(brew_params)
        redirect_to @brew
    end

    def strongest
        @brew = Brew.strongest
    end 

    private 

    def brew_params
        params.require(:brew).permit(:blend_name, :origin, :notes, :strength)
    end 

end
