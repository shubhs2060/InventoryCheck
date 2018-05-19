require 'rails_helper'

RSpec.describe OrderProductHistory, type: :model do
  it { is_expected.to belong_to(:order_product) }
  it { is_expected.to belong_to(:product_pack) }

  it { is_expected.to validate_numericality_of(:quantity) }
  it { is_expected.to validate_numericality_of(:price_per_pack) }
end
