require 'spec_helper'

describe StaticPagesController do
  render_views

  pages = %w{ home contact about help}

  describe "Static Pages" do
    pages.each do |page|
      it "'#{page}', should have the right title" do
        visit "/#{page}"
        page.should have_content(page)
      end
    end
  end

  describe "GET 'home'" do
    it "returns http success" do
      get 'home'
      response.should be_success
    end
  end

  describe "GET 'contact'" do
    it "returns http success" do
      get 'contact'
      response.should be_success
    end
  end

  describe "GET 'about'" do
    it "returns http success" do
      get 'about'
      response.should be_success
    end
  end

end
