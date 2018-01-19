class Api::V1::TripsController < ApplicationController
  before_action :set_trip, only: [:show, :update, :destroy]

  def index
    @trips = Trip.all
    render json: @trips
  end

  def create
    @trip = Trip.create(trip_params)
    render json: @trip
  end

  def show
    render json: @trip
  end

  def update
    render json: @trip
  end

  def destroy
    @trip = Trip.destroy
    render json: User.all
  end

  private

  def set_trip
    @trip = Trip.find(params[:id])
  end

  def trip_params
    params.permit(:start_location, :end_location, :start_time, :end_time, :journey_id, :bar_id)
  end

end
