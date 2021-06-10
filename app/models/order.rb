class Order < ApplicationRecord
  belongs_to :user
  has_many :order_products, dependent: :destroy
  accepts_nested_attributes_for :order_products
end
