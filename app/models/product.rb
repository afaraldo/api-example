class Product < ApplicationRecord
    belongs_to :category
    has_many :purchase_items
    has_many :purchases, through: :purchase_items
    
    validates_presence_of :name

    accepts_nested_attributes_for :category
end
