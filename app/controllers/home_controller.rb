class HomeController < ApplicationController
  def home
    if logged_in?

    else
      redirect_to login_path
    end
  end

  def index
    @user = User.new
  end
end
