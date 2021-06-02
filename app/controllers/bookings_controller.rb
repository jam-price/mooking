class BookingsController < ApplicationController  
  def new
    @cow = Cow.find(params[:cow_id])
    @booking = Booking.new
  end

  def create
    @cow = Cow.find(params[:cow_id])

    @booking = Booking.new(booking_params)
    @booking.cow = @cow
    if @booking.save
      redirect_to cow_path(@cow)
    else
      render :new
    end
  end

  private

  def booking_params
    params.require(:cow).permit( :start_date, :end_date )
  end
end