class BrewsController < ApplicationController
    def strongest
        brew = Brew.all.max_by{|x| x.strength}
        @brews = Brew.all.select{|x| brew.strength == x.strength}
    end

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
        @brew = Brew.create(brews_params)
        redirect_to @brew
    end

    def edit
        @brew = Brew.find(params[:id])
    end

    def update
        @brew = Brew.find(params[:id])
        @brew.update(brews_params)
        redirect_to "https://www.google.com/"
    end

    def destroy
        @brew = Brew.find(params[:id])
        @brew.destroy
        flash[:messages] = "killed"
        redirect_to brews_path
    end


    private

    def brews_params
        params.require(:brew).permit(:blend_name, :origin, :notes, :strength)
    end
end
