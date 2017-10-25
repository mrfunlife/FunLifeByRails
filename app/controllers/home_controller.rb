class HomeController < ApplicationController
  def home

  end

  def index
    @user = User.new
  end
end
