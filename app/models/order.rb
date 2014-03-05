class Order < ActiveRecord::Base
  has_many :line_items
  has_many :products, through: :line_items
  validates :invoice_num, uniqueness: true
  after_update :received_order

  def received_order
    if received?
      #add received totals to product totals
    end
  end

  def received?
    received == true
  end
end
