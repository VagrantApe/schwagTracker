class Product < ActiveRecord::Base
  has_many :line_items
  has_many :orders, through: :line_items
  validates :name, presence: true
  validates :sku, uniqueness: true

  def product_low?
    self.qty_on_hand+self.qty_on_order < self.min_order_qty
  end

end
