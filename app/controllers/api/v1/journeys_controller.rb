class  Api::V1::JourneysController < ApplicationController
  before_action :set_journey, only: [:show, :update, :destroy]

  def index
    @journeys = Journey.all
    render json: @journeys
  end

  def create
    @journey = Journey.create({user: current_user, start_location: params['start_location'], end_location: params['end_location']})
    params['trips'].each do |bar|
      @bar = Bar.find_by({id: bar['id']})
      Trip.create({journey: @journey, bar: @bar})
    end
    render json: {journey: @journey, trips: @journey.trips}
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
    params.require(:journey).permit(:user)
  end
end
