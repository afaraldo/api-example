require 'rails_helper'

RSpec.describe Purchase, type: :model do
  describe 'associations' do
    it { should have_many(:purchase_items) }
  end

  describe 'validations' do
    it { should validate_presence_of(:date) }
    it { should validate_presence_of(:number) }
  end
end
