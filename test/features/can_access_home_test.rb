require "test_helper"

feature "Visiting the landing-page" do
  scenario "will say welcome" do

    visit root_path
    page.text.must_include ""

  end
end
