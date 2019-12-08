class OrderMailer < ActionMailer::Base
	default to: 'believebamboo714@gmail.com'
	def order_email(email, firstname, lastname, country, address, optional, city, state, zip, order)
		@email = email
		@firstname = firstname
		@lastname = lastname
		@country = country
		@address = address
		@optional = optional
		@city = city
		@state = state
		@zip = zip
		@order = order
		mail(from: 'Orders@BelieveBamboo.com', subject: @email)
	end
end
