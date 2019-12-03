class CustomersController < ApplicationController


	def new

		@order = current_cart.order
		@items = current_cart.order.items
		@customer = Customer.new
	end

	def create
		email = params[:customer][:email]
		firstname = params[:customer][:firstname] 
		lastname = params[:customer][:lastname]
		country = params[:customer][:country]
		address = params[:customer][:address]
		optional = params[:customer][:optional]
		city = params[:customer][:city]
		state = params[:customer][:state]
		zip = params[:customer][:zip]
		order = current_cart.order.items.each do |i|
							i.product.title
						end	

		@customer = Customer.new(customer_params)
		if @customer.save
			OrderMailer.order_email(email, firstname, lastname, country, address, optional, city, state, zip, order).deliver
			redirect_to checkout_path
		else
			flash[:danger] = @customer.errors.full_messages.join(", ")
      redirect_to customer_path
    end
	end



	private
	def customer_params
		params.require(:customer).permit(:email, :firstname, :lastname, :country, :address, :optional, :city, :state, :zip, :order_id)
	end

end
