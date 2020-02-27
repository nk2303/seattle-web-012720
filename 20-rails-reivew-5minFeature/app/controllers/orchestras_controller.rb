class OrchestrasController < ApplicationController

    def index 
        @orchestras = Orchestra.all
    end

    def show
        @orchestra = Orchestra.find(params[:id])
    end
    
    def new
        @orchestra = Orchestra.new
    end

    def create
        @orchestra = Orchestra.create(orchestra_params)
        if @orchestra.valid?
            redirect_to orchestra_path(@orchestra)
        else
            flash[:messages] = @orchestra.errors.full_messages
            render :new
        end
        
    end

    private
    def orchestra_params
        params.require(:orchestra).permit(:name, :classification, :conductor_id)
    end
end