require 'rails_helper'

RSpec.describe Product, type: :model do
  describe 'associations' do
    it { should belong_to(:category) }
    it { should have_many(:purchase_items) }
    it { should have_many(:purchases) }
  end

  describe 'validations' do
    it { should validate_presence_of(:name) }
  end
end
