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
	    	User.techyes.each do |user|
				UserMailer.work_order(@order, user).deliver
			end
				flash[:success] = "Work Order Form Completed!"
				redirect_to root_path
	    else
	      render 'new'
	    end
	end

	#I have a feeling something is wrong with the mailer here or in the setup_mail.rb domain. Thoughts?

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