class Product < ApplicationRecord
	has_many :product_packs, dependent: :destroy
  has_many :order_products

  validates :code, presence: true, uniqueness: true, allow_blank: false
  validates :name, presence: true, allow_blank: false

  accepts_nested_attributes_for :product_packs
end
