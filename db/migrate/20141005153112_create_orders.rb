class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.references :user
      t.decimal :total_cost
      t.timestamps
    end
  end
end
