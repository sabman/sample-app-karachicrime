class StaticPagesController < ApplicationController
  def home
  end

  def contact
  end

  def about
    @title='About Us'
  end

  def help
  end
end
