class DogsController < ApplicationController
  def show
    @dog = Dog.find(params[:id])
  end

  def destroy
    @dog = Dog.find(params[:id])
    @dog.destroy
    redirect_to dogs_path, status: :see_other
  end

  def index
    @dogs = Dog.all
  end

  def edit
    @dog = Dog.find(params[:id])
  end

  def update
    @dog = Dog.find(params[:id])
    @dog.update(params[:dog])
    redirect_to dog_path(@dog)
  end

  def new
    @dog = Dog.new
    @dog.save
  end

  def create
    @dog = Dog.new(dog_params)
    @dog.user = current_user
    if @dog.save
      redirect_to root_path, notice: "dog created successfully"
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def dog_params
    params.require(:dog).permit(:name, :breed, :description, :price)
  end

  
end
