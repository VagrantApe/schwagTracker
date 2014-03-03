class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.string :vendor
      t.decimal :price
      t.integer :min_order_qty
      t.integer :lead_time
      t.string :image_url
      t.string :sku
      t.text :notes
      t.integer :qty_on_hand
      t.integer :qty_on_order
      t.decimal :set_up_fee

      t.timestamps
    end
  end
end
