class Api::V1::LocationsController < ApplicationController

  def create
    byebug
  end


  private

  def location_params
    params.permit(:lat, :lng)
  end

end
