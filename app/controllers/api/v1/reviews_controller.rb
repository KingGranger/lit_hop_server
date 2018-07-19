class Api::V1::ReviewsController < ApplicationController
  before_action :set_review, only: [:show, :update, :destroy]

  def index
    @reviews = Review.all
    render json: @reviews
  end

  def create
    @review = Review.create(title: params[:title], content: params[:content])
    render json: @review
  end

  def update
    @review.update(review_params)
    render json: @review
  end

  def show
    render json: @review
  end

  def destroy
    @review.destroy
    render json: Review.all
  end

  private

  def set_review
    @review = Review.find(params[:id])
  end

  def review_params
    params.permit(:title, :content)
  end
end
