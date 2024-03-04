class RentalsController < ApplicationController
  def show
    @rental = Rental.find(params[:id])
  end

  def index
    @rentals = Rental.all
  end

  private

  def rental_params
    params.require(:rental).permit(:status)
  end
end
