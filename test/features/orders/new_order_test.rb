require "test_helper"

feature "As a user I want to visit the order page" do
  scenario "to place a new order" do

    sign_in

    new_order

  end

# feature "As a user I want to visit the order page" do
#   scenario "to place a new order with line item" do

#     sign_in
#     new_product
#     new_order_line_item
#   end
#   end
end


