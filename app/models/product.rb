class Product < ActiveRecord::Base
	has_and_belongs_to_many :categories
	has_many :product_details
	has_many :product_images

	validates :price , numericality: { greater_than: 0 } presence: true
	validates :rating , numericality: { greater_than_or_equal_to: 0 , less_than_or_equal_to: 5} presence: true
	validates :name , presence: true
	validates :lenght , presence: true , numericality: { greater_than_or_equal_to: 0 }
	validates :width , presence: true , numericality: { greater_than_or_equal_to: 0 }
	validates :depth , presence: true , numericality: { greater_than_or_equal_to: 0 }
	validates :weight , presence: true , numericality: { greater_than_or_equal_to: 0 }
	validates :stock , presence: true , numericality: { greater_than_or_equal_to: 0 }
	validates :discount, numericality: { greater_than_or_equal_to: 0 , less_than_or_equal_to: 100 }
		
end
