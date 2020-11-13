class Review < ApplicationRecord
	mount_uploader :image, ImageUploader
	belongs_to :product
	validates :name, presence: true
	validates :country, presence: true
	validates :stars, presence: true
	validates :comments, presence: true
end
