class Product < ActiveRecord::Base
  has_many :line_items
  has_many :orders, through: :line_items
  validates :name, presence: true
  validates :sku, uniqueness: true

end
