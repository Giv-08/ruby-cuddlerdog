class PagesController < ApplicationController
  skip_before_action :authenticate_user!
  def home
  end

  def show
    
    @user = current_user
  end
end
