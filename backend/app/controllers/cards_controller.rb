class CardsController < ApplicationController
  def index
    @cards = Card.all

    render json: @cards
  end

  def show
    @card = Card.find(params[:id])

    render json: @card
  end

  def create
    @card = Card.create(name: params[:name], description: params[:description], user_id: params[:user_id])

    render json: @card
  end

  def update
    @card = Card.find(params[:id])
    @card.update(name: params[:name], description: params[:description], user_id: params[:user_id])

    render json: @card
  end

  def destroy
    @card = Card.find(params[:id])
    @card.destroy

    render json: @card
  end
end
