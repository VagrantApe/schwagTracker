require "test_helper"

feature "As a user I want to visit a product page" do
  scenario "so that I can edit my product" do

    sign_in

    new_product

    edit_product

  end
end


