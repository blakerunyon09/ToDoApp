class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])

    render json: @user, include: :cards
  end

  def create
    @user = User.create(username: params[:username], password: params[:password])

    render json: @user
  end

  def update
    @user = User.find(params[:id])
    @user.update(username: params[:username], password: params[:password])
    
    render json: @user
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy

    render json: @user
  end
end
