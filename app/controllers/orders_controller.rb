class OrdersController < ApplicationController

	def new
		@order = current_cart.order
		@items = current_cart.order.items
	end

	def create
		token = params[:stripeToken]
		amount = current_cart.sub_total * 100


		if amount > 0
			charge = Stripe::Charge.create({
				amount: amount.round,
				currency: 'usd',
				description: email,
				source: token,
			})
		end

		@order = current_cart.order
		id = @order.customer.id
		if @order.update_attributes(order_params.merge(status: 'open', customer_id: id))
			session[:cart_token] = nil
			flash[:success] = "Your order was successful!"
			redirect_to root_path
		end
	end


	private
	def order_params
		params.require(:order).permit(:cardname)
	end
end
