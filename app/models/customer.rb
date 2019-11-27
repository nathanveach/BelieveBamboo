class Customer < ApplicationRecord
	belongs_to :order
	validates :firstname, presence: true
	validates :lastname, presence: true
	validates :email, presence: true
	validates :country, presence: true
	validates :state, presence: true
	validates :city, presence: true
	validates :zip, presence: true
	validates :address, presence: true


   def country_name
    country = self.country
    ISO3166::Country[country]
   end
end
