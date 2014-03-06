class Order < ActiveRecord::Base
  scope :is_received, where(received: true)
  scope :not_received, where(received: false)
  has_many :line_items, dependent: :destroy
  has_many :products, through: :line_items
  #validates :invoice_num, uniqueness: true
  after_update :received_order

  def received_order
    if received?
      self.products.each do |product|
        self.line_items.each do |line|
          if line.product_id == product.id
            product.qty_on_hand += product.qty_on_order
            product.qty_on_order = 0
            product.save!
          end
        end
      end
    end
  end

  def received?
    received == true
  end

  # def self.all_received
  #   all conditions: where(received: true)
  # end

  # def self.all_not_received
  #   all conditions: where(received: false)
  # end

end
