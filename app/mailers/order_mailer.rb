class OrderMailer < ActionMailer::Base
	default to: 'nathanbveach@gmail.com'
	def order_email(email, firstname, lastname, country, address, optional, city, state, zip)
		@email = email
		@firstname = firstname
		@lastname = lastname
		@country = country
		@address = address
		@optional = optional
		@city = city
		@state = state
		@zip = zip
		mail(from: 'Orders@BelieveBamboo.com', subject: 'NEW ORDER!')
	end
end