class OrdersController < ApplicationController
    def index
        @orders = Order.all
    end

    def show
        @order = Order.find(params[:id])
    end

    def new
        @order = Order.new
    end

    def create
        @order = Order.create(order_params)
        redirect_to orders_path
    end

    private

    def order_params
        params.require(:order).permit(:customer_id, :brew_id, :price)
    end

end