class ApplicationController < ActionController::Base

	before_action :current_cart



	def current_cart
		@productz = Product.all 
		@current_cart ||= ShoppingCart.new(token: cart_token)
	end
	helper_method :current_cart

	private
	def cart_token
		return @cart_token unless @cart_token.nil?

		session[:cart_token] ||= SecureRandom.hex(8)
		@cart_token = session[:cart_token]
	end
end
