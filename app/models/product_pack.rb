class ProductPack < ApplicationRecord
	belongs_to :product

  validates_numericality_of :quantity
  validates_numericality_of :price
end
