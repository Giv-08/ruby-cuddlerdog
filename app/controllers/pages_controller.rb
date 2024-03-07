class PagesController < ApplicationController
  skip_before_action :authenticate_user!
  def home
    @dog = Dog.all
  end

  def dashboard
    @user = current_user
    @dogs = Dog.where(user: @user)
    # all rentals for my dogs && all rentals where I am the user
    @rentals = Rental.where(user: current_user).or(Rental.where(dog: current_user.dogs)).order(created_at: :desc)
  end

  def show
    @dog = Dog.all
  end
end
