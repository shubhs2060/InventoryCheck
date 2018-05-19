class CreateOrderProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :order_products do |t|
      t.integer :quantity
	  t.references :order, index: true, foreign_key: true
      t.references :product, index: true, foreign_key: true
      
      t.timestamps
    end
  end
end
