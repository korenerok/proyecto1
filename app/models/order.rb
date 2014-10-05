class Order < ActiveRecord::Base
	belongs_to :user
	has_many :order_details
	has_many :products , through: :order_details

	validates :user , presence: true
	validates :total_cost , numericality: { greater_than: 0 } , presence: true
	
end
