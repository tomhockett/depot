require 'rails_helper'

RSpec.describe Product, type: :model do
  subject { described_class.new(title: "A Title", price: 4.50) }

  context 'validations' do
    subject { create(:product) }
    it { is_expected.to validate_presence_of(:title) }
    it { is_expected.to validate_presence_of(:description) }
    it { is_expected.to validate_presence_of(:image_url) }
    it do
      is_expected.to validate_numericality_of(:price)
        .is_greater_than_or_equal_to(0.01)
    end
  end
end
