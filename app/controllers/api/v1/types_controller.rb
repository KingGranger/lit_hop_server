class Api::V1::TypesController < ApplicationController

  def index
    @types = Type.all
    render json: @types
  end

  def create
    # from api call when bars are created 
  end
end
