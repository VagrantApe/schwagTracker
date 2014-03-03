class Product < ActiveRecord::Base
  has_many :orders
  has_many :line_items, :through => :orders
end
