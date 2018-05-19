class Order < ApplicationRecord
  has_many :order_products, -> { order("created_at ASC")}
  has_many :order_product_histories, through: :order_products

  accepts_nested_attributes_for :order_products, allow_destroy: true

  def total
  	# sum all history subtotals
    order_product_histories.map{|h| h.subtotal}.inject(0){|sum,v| sum + v }
  end
end
