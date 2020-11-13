class ProductsController < ApplicationController

	def index
		@products = Product.all

		@order = current_cart.order
		@items = current_cart.order.items
	end

	def show
		@product = Product.find(params[:id])
		if @product.reviews.blank?
			@avg_rating = 0
		else 
			@avg_rating = @product.reviews.average(:stars).round(2)
		end

		@order = current_cart.order
		@items = current_cart.order.items
	end
end
