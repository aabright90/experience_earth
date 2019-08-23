class ExperiencesController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]

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
