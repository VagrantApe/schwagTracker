class Order < ActiveRecord::Base
  has_many :line_items
  has_many :products, through: :line_items
  validates :invoice_num, uniqueness: true
end
