require 'spec_helper'

describe UsersController do
  render_views

  describe "GET 'new'" do
    it "returns http success" do
      get 'new'
      response.should be_success
    end

    it "should have the correct title" do
      visit '/users/new'
      page.should have_content("Sign up")
    end
  end

end
