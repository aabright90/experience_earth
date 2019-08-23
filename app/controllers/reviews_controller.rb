class ReviewsController < ApplicationController
  def new
    @review = Review.new
    @booking = Booking.find(params[:booking_id])
  end

  def create
    @review = Review.new(review_params)
    @booking = Booking.find(params[:booking_id])
    @review.booking = @booking
    @review.user = current_user
    # @experience = Experience.find(@booking.experience_id)
    # @review.experience = @experience
    if @review.save
      redirect_to user_dashboard_path
    else
      render :new
    end
  end
  private
  def review_params
    params.require(:review).permit(:content)
  end
end
