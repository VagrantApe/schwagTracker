class LineItem < ActiveRecord::Base
  belongs_to :order
  belongs_to :product
  #validates :qty, presence: true
  after_create :update_product_on_order_qty
  before_destroy :destroy_order_qty_on_product

  def update_product_on_order_qty
    product = Product.find(self.product_id)
    product.qty_on_order += self.qty
    product.save!
  end

  def destroy_order_qty_on_product
    unless self.order.received?
      product = Product.find(self.product_id)
      product.qty_on_order -= self.qty
      product.save!
    end
  end


end
