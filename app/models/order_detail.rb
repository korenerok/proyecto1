class OrderDetail < ActiveRecord::Base
	belongs_to :order
	belongs_to :product_detail

	validates :order, presence: true
	validates :product_detail, presence: true
	validates :order_number, uniqueness: true , numericality: { only_integer: true }
	validates :quantity, numericality: {greater_than: 0, only_integer: true}, presence: true
	validates :price, numericality: {greater_than: 0}, presence: true

	
end
