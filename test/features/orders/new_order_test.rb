require "test_helper"

feature "User can create a new order" do
  scenario "from the new order page" do

    visit new_order_path

    page.text.must_include ""

  end
end
