class Order < ApplicationRecord
	belongs_to :customer
	has_many :items, class_name: 'OrderItem'
	
end
