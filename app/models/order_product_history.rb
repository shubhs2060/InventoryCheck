class OrderProductHistory < ApplicationRecord
  belongs_to :order_product
  belongs_to :product_pack
  has_one :product, through: :product_pack

  validates_numericality_of :quantity
  validates_numericality_of :price_per_pack 

  def subtotal
  	quantity * price_per_pack
  end

end
