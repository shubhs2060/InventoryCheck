require 'rails_helper'

RSpec.describe Product, type: :model do
  it { is_expected.to have_many(:product_packs) }
  it { is_expected.to have_many(:order_products) }
  it { is_expected.to validate_uniqueness_of(:code) }
  it { is_expected.to validate_presence_of(:name) }
end
