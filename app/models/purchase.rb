class Purchase < ApplicationRecord
    has_many :purchase_items

    validates_presence_of :date
    validates_presence_of :number

    accepts_nested_attributes_for :purchase_items
end
