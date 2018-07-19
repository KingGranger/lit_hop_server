class Api::V1::BarsController < ApplicationController
  before_action :set_bar, only: [:show, :update, :destroy]

  def index
    @bars = Bar.all
    render json: @bars
  end

  def create
    google_places_api = "https://maps.googleapis.com/maps/api/place/nearbysearch/json?location=#{bar_params[:lat]},#{bar_params[:lng]}&radius=500&type=bar&key=AIzaSyCQh-ANCsLGqwp1ETq1eSj55pUo0Rd48dg"
    response = RestClient.get(google_places_api)
    bars_json = JSON.parse(response)
    bars = bars_json['results'].map do |bar|
       Bar.find_or_create_by(name: bar['name'],
       lat: bar['geometry']['location']['lat'].to_f,
       lng: bar['geometry']['location']['lng'].to_f,
       price_level: bar['price_level'],
       types: bar['types'],
       address: bar['vicinity'],
       place_id: bar['place_id'],
       rating: bar['rating'].to_f)
     end
    render json: bars
  end

  def show
    render json: @bar
  end

  def update
    @bar.update(bar_params)
    render json: @bar
  end

  def destroy
    @bar.destroy
    render json: Bar.all
  end

  private

  def set_bar
    @bar = Bar.find(params[:id])
  end

  def bar_params
    params.permit(:name, :address, :lat, :lng, :open, :price_level, :rating, :place_id)
  end
end
