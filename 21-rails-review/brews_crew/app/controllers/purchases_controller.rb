class PurchasesController < ApplicationController
    def index
        @purchases = Purchase.all
    end

    def show
        @purchase = Purchase.find(params[:id])
    end 

    def new
        @purchase = Purchase.new
    end

    def create
        @purchase = Purchase.create(purchase_params)
        if @purchase.valid?
            redirect_to @purchase
        else 
            flash[:notice] = @purchase.errors.full_messages
            render :new
        end 
    end 



    private 

    def purchase_params
        params.require(:purchase).permit(:customer_name, :price, :brew_id)
    end 

end
