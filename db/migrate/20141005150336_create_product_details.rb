class CreateProductDetails < ActiveRecord::Migration
  def change
    create_table :product_details do |t|
      t.references :product
      t.string :color
      t.string :size
      t.timestamps
    end
  end
end
