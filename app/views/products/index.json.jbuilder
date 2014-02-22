json.array!(@products) do |product|
  json.extract! product, :id, :name, :vendor, :price, :min_qty, :lead_time, :image_url, :sku, :notes, :qty_on_hand, :set_up_fee
  json.url product_url(product, format: :json)
end
