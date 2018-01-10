class Api::V1::BarsController < ApplicationController

  def index
    @bars = Bars.all
    render json: @bars
  end

  def create
    @bar = Bar.create(bar_params)
    render json: @bar
  end

  def show
    @bar = Bar.find(params[:id])
    render json: @bar 
  end
end
