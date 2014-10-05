class CreateOrderDetails < ActiveRecord::Migration
  def change
    create_table :order_details do |t|
    	t.references :order
    	t.references :product_detail
    	t.integer :order_number
    	t.decimal :price
    	t.integer :quantity
      t.timestamps
    end
  end
end
