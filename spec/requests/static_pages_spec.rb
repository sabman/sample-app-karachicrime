require 'spec_helper'

describe "Static pages" do

  let(:base_title){ 'KarachiCrime' }

  describe "Home page" do

    it "should have the h1 'Sample App'" do
      visit '/home'
      page.should have_selector('h1', :text => 'Sample App')
    end

    it "should have the title 'Home'" do
      visit '/home'
      page.should have_selector('title',
                        :text => "#{base_title} | Home")
    end
  end

  describe "Help page" do

    it "should have the h1 'Help'" do
      visit '/help'
      page.should have_selector('h1', :text => 'Help')
    end

    it "should have the title 'Help'" do
      visit '/help'
      page.should have_selector('title',
                        :text => "#{base_title} | Help")
    end
  end

  describe "About page" do

    it "should have the h1 'About'" do
      visit '/about'
      page.should have_selector('h1', :text => 'About Us')
    end

    it "should have the title 'About Us'" do
      visit '/about'
      page.should have_selector('title',
                    :text => "#{base_title} | About Us")
    end
  end
end
