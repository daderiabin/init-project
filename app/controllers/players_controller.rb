# frozen_string_literal: true

class PlayersController < ApplicationController
  include Pagy::Backend

  def index
    @pagy, @players = pagy(Player.search(params[:search], params[:card_type]).order(rating: :desc), page: params[:page], items: 100)
    # @courses = @courses.where(category_id: params[:category_id]) if params[:category_id].present?
    # @pagy, @players = pagy(Player.order(rating: :desc), page: params[:page], items: 100)
  end

  def show
    @player = Player.find(params[:id])
  end
end
