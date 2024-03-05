class RentalsController < ApplicationController
  # skip_before_action :authenticate_rental!, only: :home

  def show
    @rental = Rental.find(params[:id])
  end

  def index
    @rentals = Rental.all
  end

  def new
    @rental = Rental.new
    @rental.save
  end

  def create
    @rental = Rental.new(rental_params)
    @rental.rental = current_rental
    if @rental.save
      redirect_to root_path, notice: "rental created successfully"
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
    @rental = Rental.find(params[:id])
  end

  def update
    @rental = Rental.find(params[:id])
    @rental.update(params[:rental])
    redirect_to rental_path(@rental)
  end

  private

  def rental_params
    params.require(:rental).permit(:status)
  end
end
