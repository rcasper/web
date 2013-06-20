class ReservationsController < ApplicationController
  def new
    @reservation = Reservation.new
  end

  def create
    @reservation = Reservation.new(reserve_params)
    if @reservation.save
      flash[:success] = "Your reservation has been created, please call if you need to make any changes."
      redirect_to root_path
    else
      render 'new'
    end
  end

  private

    def reserve_params
      params.require(:reservation).permit(:name, :phone, :people, :time)
    end
end
