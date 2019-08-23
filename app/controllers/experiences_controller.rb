class ExperiencesController < ApplicationController
  def index
    @experiences = Experience.all
  end

  def show
    @experience = Experience.find(params[:id])
    @booking = Booking.new
  end

  def new
    @booking = Booking.find(params[:experience_id])
    @experience = Experience.new
  end
end
