class Product < ActiveRecord::Base
  has_many :line_items
  has_many :orders, through: :line_items
  validates :name, presence: true
  validates :sku, uniqueness: true

  has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "images/:style/missing.png"
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/

end
