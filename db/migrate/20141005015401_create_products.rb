class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.decimal :price
      t.float :rating
      t.text :description
      t.string :name
      t.integer :stock
      t.float :weight
      t.float :discount
      t.float :lenght
      t.float :width
      t.float :depth
      t.timestamps
    end
  end
end
