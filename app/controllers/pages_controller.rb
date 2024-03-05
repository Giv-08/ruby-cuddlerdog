class PagesController < ApplicationController
  skip_before_action :authenticate_user!
  def home
    @dog = Dog.all
  end

  def dashboard
    @user = current_user
    @dogs = Dog.all
  end

  def show
    @dog = Dog.all
  end
end
