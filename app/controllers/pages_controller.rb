class PagesController < ApplicationController

	def about
		@order = current_cart.order
		@items = current_cart.order.items		
	end

	def tracking
		@order = current_cart.order
		@items = current_cart.order.items
	end

	def refunds
		@order = current_cart.order
		@items = current_cart.order.items
	end

end
