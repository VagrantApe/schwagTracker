require "simplecov"
SimpleCov.start 'rails'

ENV["RAILS_ENV"] = "test"
require File.expand_path("../../config/environment", __FILE__)
require "rails/test_help"
require "minitest/rails"
require "minitest/rails/capybara"

class ActiveSupport::TestCase
  fixtures :all
end

def new_order
  visit new_order_path
  fill_in "Invoice num", with: orders(:cn).invoice_num
  click_on "Create Order"
  page.text.must_include "Order was successfully created."
end

def edit_order
  click_on "Edit"
  fill_in "Invoice num", with: "54321"
  click_on "Update Order"

  page.text.must_include "Order was successfully updated."
  page.text.must_include "54321"
end

# def delete_order
#   click_on "Delete"
#   page.wont_have_content "12345"
# end

def new_product
  visit new_product_path
  fill_in "Name", with: products(:pr).name
  fill_in "Vendor", with: products(:pr).vendor
  fill_in "Price", with: products(:pr).price
  fill_in "Min order qty", with: products(:pr).min_order_qty
  fill_in "Lead time", with: products(:pr).lead_time
  fill_in "Sku", with: products(:pr).sku
  fill_in "Notes", with: products(:pr).notes
  fill_in "Qty on hand", with: products(:pr).qty_on_hand
  fill_in "Qty on order", with: products(:pr).qty_on_order
  fill_in "Set up fee", with: products(:pr).set_up_fee
  click_on "Create Product"
  page.text.must_include "Product was successfully created."
end

def edit_product
  click_on "Edit"
  fill_in "Name", with: "Ramin"
  click_on "Update Product"
  page.text.must_include "Product was successfully updated."

end

class ActionDispatch::IntegrationTest
  include Rails.application.routes.url_helpers
  include Capybara::DSL
end
