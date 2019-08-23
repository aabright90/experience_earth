class BookingsController < ApplicationController
  def show
    @booking = Booking.find(params[:id])
  end

  def create
    @experience = Experience.find(params[:experience_id])
    @booking = Booking.new
    @booking.experience = @experience
    @booking.user = current_user
    if @booking.save
      redirect_to user_dashboard_path
    end
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to user_dashboard_path
 end
end
