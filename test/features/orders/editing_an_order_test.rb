require "test_helper"

feature "As a user I want to visit the order page" do
  scenario "to edit an order" do

    sign_in

    new_order

    edit_order

  end
end


