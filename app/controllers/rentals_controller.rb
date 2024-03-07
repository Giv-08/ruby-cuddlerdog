class RentalsController < ApplicationController
  # skip_before_action :authenticate_rental!, only: :home

  def show
    @dog = Dog.find(params[:dog_id])
    @rental = Rental.find(params[:id])
  end

  def index
    @rentals = Rental.all
  end

  def new
    @dog = Dog.find(params[:dog_id])
    @rental = Rental.new
  end

  def create
    @rental = Rental.new(rental_params)
    @rental.status = "pending"
    @dog = Dog.find(params[:dog_id])
    @rental.dog = @dog
    @rental.user = current_user
    @rental.start_date = Date.parse(rental_params[:start_date])
    @rental.end_date = Date.parse(rental_params[:end_date])
    if @rental.save
      redirect_to dashboard_path, notice: "rental created successfully"
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @rental = Rental.find(params[:id])
    @rental.destroy
    redirect_to rentals_path, status: :see_other
  end

  def edit
    @dog = Dog.find(params[:dog_id])
    @rental = Rental.find(params[:id])
  end
  # patch /rentals/:id
  def update
    @rental = Rental.find(params[:id])
    @rental.update(rental_params)
    redirect_to dashboard_path
  end

  private

  def rental_params
    params.require(:rental).permit(:status, :dog_id, :user_id, :start_date, :end_date)
  end
end
