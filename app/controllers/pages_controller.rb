class PagesController < ApplicationController

	def about
		@order = current_cart.order
		@items = current_cart.order.items		
	end

	def contact
		@order = current_cart.order
		@items = current_cart.order.items
	end

end
