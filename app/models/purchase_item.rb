class PurchaseItem < ApplicationRecord
  belongs_to :purchase
  belongs_to :product

  validates_presence_of :quantity
end
