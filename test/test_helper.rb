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
    fill_in "Invoice Number", with: "54321"
    click_on "submit"
    page.text.must_include "Order was successfully created."
end

def edit_order
  click_on "Edit"
  fill_in "Invoice Number", with: "54321"
  click_button "submit"

  page.text.must_include "Order was successfully updated."
  page.text.must_include "54321"
end

def delete_order
  click_on "Delete"
  page.wont_have_content "12345"
end

def new_product
  visit new_product_path
  fill_in "Product Name", with: "Water Bottle"
  fill_in "Vendor Name", with: "Company"
  fill_in "Price", with: "15"
  fill_in "Minimum Order", with: "200"
  fill_in "Lead Time", with: "21"
  fill_in "Image URL", with: "google.com"
  fill_in "SKU", with: "ksjsh"
  fill_in "Product Notes", with: "this is with a new design"
  fill_in "Current Inventory", with: "400"
  fill_in "Order Amount", with: "150"
  fill_in "Setup Fee", with: "300"
  click_on "submit"
  page.text.must_include "Product was successfully created."
end

def delete_product
  click_on "Delete"
  page.wont_have_content "Company"
  page.wont_have_content "Water Bottle"
  page.wont_have_content "$20"
  page.wont_have_content "Water Bottle with new design"
  page.wont_have_content "$200"
  page.wont_have_content "$20"
end


def edit_product
  click_on "Edit"
  fill_in "Product Name", with: "Ramin"
  click_on "submit"
  page.text.must_include "Product was successfully updated."
end

def sign_in(role = :admin)
  visit new_user_session_path
  fill_in "Email", with: users(:lindy).email
  fill_in "Password", with: 'password'
  click_on "Sign in"
end

def sign_out
  click_on "Sign Out"
  page.must_have_content "You are not authorized to access this page."
  page.wont_have_content "There was a problem logging you out"
end


class ActionDispatch::IntegrationTest
  include Rails.application.routes.url_helpers
  include Capybara::DSL
end
