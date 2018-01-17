class Api::V1::BarsController < ApplicationController
  before_action :set_bar, only: [:show, :update, :destroy]

  def index
    @bars = Bar.all
    render json: @bars
  end

  def create
    @bar = Bar.create(bar_params)
    # byebug
    render json: @bar
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
    params.permit(:name, :address, :lat, :lng, :open, :price_level, :rating)
  end
end
