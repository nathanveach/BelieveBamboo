class Order < ApplicationRecord

	has_many :items, class_name: 'OrderItem'
	has_one :customer
	
end
