class CreateProductPacks < ActiveRecord::Migration[5.2]
  def change
    create_table :product_packs do |t|
      t.references :product, index: true, foreign_key: true
      t.integer :quantity
      t.decimal :price, precision: 8, scale: 2

      t.timestamps
    end
  end
end
