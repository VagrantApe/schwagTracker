require "test_helper"

feature "As a user I want to visit the products page" do
  scenario "to add a new product" do

    sign_in

    new_product

  end
end


