class DogsController < ApplicationController
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
end
