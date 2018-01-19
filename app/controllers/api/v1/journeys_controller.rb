class  Api::V1::JourneysController < ApplicationController
  before_action :set_journey, only: [:show, :update, :destroy]

  def index
    @journeys = Journey.all
    render json: @journeys
  end

  def create
    @journey = Journey.create(journey_params)
    render json: @journey
  end

  def show
    render json: @journey
  end

  def update
    @journey.update(journey_params)
    render json: @journey
  end

  def destroy
    @journey.destroy
    render json: Journey.all
  end

  private

  def set_journey 
    @journey = Journey.find(params[:id])
  end

  def journey_params
    params.permit(:user_id)
  end
end
