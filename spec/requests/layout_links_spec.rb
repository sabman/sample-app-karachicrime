require 'spec_helper'

describe "LayoutLinks" do
  it "should have a Home at '/'" do
    visit root_path
    page.should have_css('title', text: "Home")
  end

  it "should have a Contact page at '/contact'" do
    visit contact_path
    page.should have_css('title', text: "Contact")
  end

  it "should have a About page at '/about'" do
    visit about_path
    page.should have_css('title', text: "About")
  end

  it "should have a Help page at '/help'" do
    visit help_path
    page.should have_css('title', text: "Help")
  end

  it "should have a signup page at '/signup" do
    visit signup_path
    page.should have_css('title', text: "Sign up")
  end

  it "should have the right links" do
    visit root_path
    click_link "About"
    page.should have_css('title', text: 'About')
    click_link "Help"
    page.should have_css('title', text: 'Help')
    click_link "Contact"
    page.should have_css('title', text: 'Contact')
    click_link "Home"
    page.should have_css('title', text: 'Home')
    click_link "Sign up now!"
    page.should have_css('title', text: 'Sign up')
  end
end
