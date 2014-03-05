require "test_helper"

feature "As a user I want to visit the order page" do
  scenario "to remove an order from order index" do

     # new_order

     # delete_order

    visit orders_path

    click_on "New"

    fill_in "Invoice num", with: "12345"
    click_on "Create Order"

    page.text.must_include "Order was successfully created."


    # find("a.btn.btn-danger").click_button "Delete"
    # save_and_open_page
    # page.find("a.btn.btn-danger").click_button "Delete"

    # click_link "Delete"
    # page.wont_have_content "12345"

  end
end


