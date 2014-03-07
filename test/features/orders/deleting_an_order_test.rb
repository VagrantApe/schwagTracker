require "test_helper"

feature "As a user I want to visit the order page" do
  scenario "to remove an order from order index" do

    sign_in

    visit order_path orders(:cn)

    delete_order

  end
end


