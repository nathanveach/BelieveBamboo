class ReviewsController < ApplicationController

  before_action :set_product

	def new
		@review = Review.new
		@product = Product.find(params[:product_id])

		@order = current_cart.order
		@items = current_cart.order.items
	end

	def create
		@review = Review.new(review_params)		
		@review.product_id = @product.id
		if @review.save
			flash[:success] = "Thank you for your honest review."
			redirect_to @product
		else
			flash[:danger] = @review.errors.full_messages.join(", ")
			redirect_to new_product_review_path
		end

		@order = current_cart.order
		@items = current_cart.order.items
	end

	private

		def set_product
			@product = Product.find(params[:product_id])
		end

	  def review_params
	    params.require(:review).permit(:name, :country, :stars, :image, :comments)
	  end
end
