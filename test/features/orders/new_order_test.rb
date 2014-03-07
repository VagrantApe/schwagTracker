require "test_helper"

feature "As a user I want to visit the order page" do
  scenario "to place a new order" do

    sign_in

    new_order

  end
end


