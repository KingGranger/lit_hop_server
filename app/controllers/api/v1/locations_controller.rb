class Api::V1::LocationsController < ApplicationController

  def index


  end

  def create
    google_places_api = "https://maps.googleapis.com/maps/api/place/nearbysearch/json?location=#{location_params[:lat]},#{location_params[:lng]}&radius=500&type=bar&key=AIzaSyCQh-ANCsLGqwp1ETq1eSj55pUo0Rd48dg"
    response = RestClient.get(google_places_api)
    bars_json = JSON.parse(response)
    bars = bars_json['results'].map{|bar| Bar.find_or_create_by(name: bar['name'],
       lat: bar['geometry']['location']['lat'].to_f,
       lng: bar['geometry']['location']['lng'].to_f,
       open: bar['opening_hours']['open_now'],
       price_level: bar['price_level'],
       address: bar['vicinity'],
       place_id: bar['place_id'],
       rating: bar['rating'])}
    render json: bars
  end


  private

  def location_params
    params.permit(:lat, :lng)
  end

end
