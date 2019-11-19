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
			render :charge
		end
	end

	def charge
	end

	private
	def order_params
		params.require(:order).permit(:email, :first_name, :last_name, :country, :street_address, :address2, :city, :state, :zip, :stripeToken)
	end
end