class OrdersController < ApplicationController

	def new
		@order = current_cart.order
		@items = current_cart.order.items
	end

	def create
		customer = current_cart.order.customer
		token = params[:stripeToken]
		amount = current_cart.sub_total * 100
		email = customer.email
		firstname = customer.firstname 
		lastname = customer.lastname
		country = customer.country
		address = customer.address
		optional = customer.optional
		city = customer.city
		state = customer.state
		zip = customer.zip

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
			OrderMailer.order_email(email, firstname, lastname, country, address, optional, city, state, zip).deliver
			flash[:success] = "Your order was successful!"
			redirect_to root_path
		end
	end


	private
	def order_params
		params.require(:order).permit(:cardname)
	end
end
