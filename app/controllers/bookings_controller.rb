class BookingsController < ApplicationController
  
  def create
    @booking = Booking.new(event_id: params[:event_id])
    @booking.user = current_user
    @booking.save
  end
  
  def index
    @bookings = current_user.bookings
  end

  def destroy
    @booking = Booking.find(params[:id])
    authorize @booking
    @booking.destroy
    redirect_to bookings_path
  end

  private

  def booking_params
    params.require(:booking).permit(:event_id)
  end
end
