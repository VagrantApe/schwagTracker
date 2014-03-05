require "test_helper"

feature "Check for Bootstrap" do
  scenario "on orders_path" do

   visit orders_path
   assert page.has_css? ".btn"
  end
end
