class ProductsController < ApplicationController

	def index
		@products = Product.all

		@order = current_cart.order
		@items = current_cart.order.items
	end

	def show
		@product = Product.find(params[:id])
		
		@order = current_cart.order
		@items = current_cart.order.items
	end
end
