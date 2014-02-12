class OrdersController < ApplicationController
	
  	def new
    	@order = Order.new
  	end

  	def show
    	@order = Order.find(params[:id])
  	end

	def create
	    @order = Order.new(order_params)
	    if @order.save
			UserMailer.work_order(@user).deliver
			flash[:success] = "Work Order Form Completed!"
			redirect_to @user
	    else
	      render 'new'
	    end
	end

  	def edit
    	@order = Order.find(params[:id])
  	end

	def update
	end

	def index
		@orders = Order.all
	end

	private

    def order_params
      params.require(:order).permit(:issue, :description, :time, :status) if params[:order]
    end

end