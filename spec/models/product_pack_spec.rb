require 'rails_helper'

RSpec.describe ProductPack, type: :model do
  it { is_expected.to belong_to(:product) }
  it { is_expected.to validate_numericality_of(:quantity) }
  it { is_expected.to validate_numericality_of(:price) }
end
