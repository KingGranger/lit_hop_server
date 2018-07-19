class Api::V1::UsersController < ApplicationController
  before_action :set_user, only: [:show, :update, :destroy]
  def index
    @Users = User.all
    render json: @Users
  end


  def create
    @user = User.create(user_params)

    render json: {username: @user.username, password: @user.password, age: @user.age, id: @user.id, token: issue_token({id: @user.id})}
  end

  def show
    render json: @user
  end

  def update
    @user.update(user_params)
    render json: @user
  end

  def destroy
    @user.destroy
    render json: User.all
  end

  private

  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.permit(:username, :age, :password)
  end
end
