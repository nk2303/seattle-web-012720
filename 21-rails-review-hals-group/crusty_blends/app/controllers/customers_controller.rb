class CustomersController < ApplicationController
    def show
        @customer = Customer.find(params[:id])
        # with a link to make a new order
    end

    def new
        @customer = Customer.new
    end

    def create
        @customer = Customer.create(dontlookatme)
        if @customer.valid?
            redirect_to customer_path(@customer)
        else
            render :new
        end
    end

    private

    def dontlookatme
        params.require(:customer).permit(:name)
    end
end
