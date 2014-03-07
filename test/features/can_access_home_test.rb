require "test_helper"

feature "Visitors Visiting the Landing-Page" do
  scenario "will be asked to Login" do

    visit root_path
    page.text.must_include "Login"

  end
feature "Admin Visiting the Landing-Page" do
  scenario "will see root_path" do

    sign_in
    page.text.must_include "Products Running Low"
    page.text.must_include "Pending Orders"
    end
  end
end
