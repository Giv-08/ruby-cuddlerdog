class DogsController < ApplicationController
  skip_before_action :authenticate_user!, only: :index

  def index
    @dogs = Dog.all
    if params[:breed].present?
      @dogs = @dogs.where("LOWER(breed) LIKE ?", "%#{params[:breed].downcase}%")
    elsif params[:min_price].present? && params[:max_price].present?
      min_price = params[:min_price].to_f
      max_price = params[:max_price].to_f
      @dogs = @dogs.where(price: min_price..max_price)
    elsif params[:min_price].present? || params[:max_price].present?
      min_price = params[:min_price].presence || Dog.minimum(:price)
      max_price = params[:max_price].presence || Dog.maximum(:price)
      min_price = min_price.to_f unless min_price.blank?
      max_price = max_price.to_f unless max_price.blank?
      @dogs = @dogs.where(price: min_price..max_price)
    end
  end

  def show
    @dog = Dog.find(params[:id])
  end

  def create
    @dog = Dog.new(dog_params)
    @dog.user = current_user
    if @dog.save
      redirect_to dashboard_path, notice: "dog created successfully"
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @dog = Dog.find(params[:id])
  end

  def new
    @dog = Dog.new
    @dog.save
  end

  def update
    @dog = Dog.find(params[:id])
    @dog.update(dog_params)
    redirect_to dashboard_path
  end

  def destroy
    @dog = Dog.find(params[:id])
    @dog.destroy
    redirect_to dogs_path, status: :see_other
  end

  private

  def dog_params
    params.require(:dog).permit(:users_username, :name, :breed, :description, :price, :id, :photo)
  end

end
