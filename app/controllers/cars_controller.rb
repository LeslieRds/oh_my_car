class CarsController < ApplicationController
  def index
    @cars = Car.all
  end

  def show
    @car = Car.find(params[:id])
    @bookings = @car.bookings
    @bookings_date = @bookings.map do |booking|
      { from: booking.start_date, to: booking.end_date }
    end
  end
end
