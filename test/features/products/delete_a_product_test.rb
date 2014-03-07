require "test_helper"

feature "As a user I want to visit the product page" do
  scenario "to remove a product from product index" do

    sign_in

    visit product_path products(:pr)

    delete_product

  end
end


