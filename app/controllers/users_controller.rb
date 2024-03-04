class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def new
    @user = User.new
    @user.save
  end

  def create
    @user = User.new(user_params)
    @user.user = current_user
    if @user.save
      redirect_to root_path, notice: "user created successfully"
    else
      render :new, status: :unprocessable_entity
    end

  def show
    @user = User.find(params[:id])
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to users_path, status: :see_other
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user.update(params[:user])
    redirect_to user_path(@user)
  end

  private

  def user_params
    params.require(:user).permit(:name, :contact)
  end
end
