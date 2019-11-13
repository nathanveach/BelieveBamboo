class OrdersController < ApplicationController

	def new
		@order = current_cart.order
		@items = current_cart.order.items
	end

	def create
		@order = current_cart.order
		if @order.update_attributes(order_params.merge(status: 'open'))
			session[:cart_token] = nil
			flash[:success] = "Order Successful!"
			redirect_to root_path
		else
			flash[:danger] = @order.errors.full_messages.join(", ")
			render :new
		end
	end

end