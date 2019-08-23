class ReviewsController < ApplicationController
  def new
    @review = Review.new
    @booking = Booking.find(params[:booking_id])
  end

  def create
    @review = Review.new(params[:id])
    @booking = Booking.find(params[:booking_id])
    @experience = Experience.find(@booking.experience_id)
    @review.booking = @booking
    if @review.save
      redirect_to experience_path(booking.experience.id)
    else
      render :new
    end
  end
end
