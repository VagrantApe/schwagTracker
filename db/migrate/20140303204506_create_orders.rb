class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.boolean :received
      t.string :invoice_num

      t.timestamps
    end
  end
end
