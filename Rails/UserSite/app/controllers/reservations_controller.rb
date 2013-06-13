class ReservationsController < ApplicationController
   def create
    @reservation = Reservation.new(reservation_params)
    if @reservation.save
      flash[:success] = "Reservation created! You will recieve a phone call if there are any issues."
      redirect_to root_url
    else
      render 'static_pages/home'
    end
  end

  private

    def reservation_params
    end
end
