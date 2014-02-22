class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :product_name
      t.integer :quantity
      t.string :invoice_number

      t.timestamps
    end
  end
end
