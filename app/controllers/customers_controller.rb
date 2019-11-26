class CustomersController < ApplicationController


	def new

		@order = current_cart.order
		@items = current_cart.order.items
		@customer = Customer.new
	end

	def create
		@customer = Customer.new(customer_params)
		if @customer.save
			flash[:success] = 'FREE SHIPPING PUTO'
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
