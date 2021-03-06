class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
  end

  def dashboard
    @user = current_user
    @experiences = @user.experiences
    @bookings = Booking.where(user: current_user)
  end
end
