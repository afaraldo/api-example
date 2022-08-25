require 'rails_helper'

RSpec.describe PurchaseItem, type: :model do
  describe 'associations' do
    it { should belong_to(:purchase) }
    it { should belong_to(:product) }
  end

  describe 'validations' do
    it { should validate_presence_of(:quantity) }
  end
end
