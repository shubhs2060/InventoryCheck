class CreateOrderProductHistories < ActiveRecord::Migration[5.2]
  def change
    create_table :order_product_histories do |t|
      t.integer :quantity
      t.decimal :price_per_pack
      t.references :order_product, index: true, foreign_key: true
  	  t.references :product_pack, index: true, foreign_key: true
      t.timestamps
    end
  end
end
