class BookingsController < ApplicationController  
  before_action :set_cow, only: [ :new, :create ]
  before_action :authenticate_user!

  def index
    @bookings = current_user.bookings
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.cow = @cow
    @booking.user = current_user
    if @booking.save
      redirect_to booking_path(@booking)
    else
      render :new
    end
  end

  private

  def set_cow
    @cow = Cow.find(params[:cow_id])
  end

  def booking_params
    params.require(:booking).permit( :start_date, :end_date )
  end
end