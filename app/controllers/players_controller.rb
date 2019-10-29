# frozen_string_literal: true

class PlayersController < ApplicationController
  include Pagy::Backend

  def index
    @pagy, @players = pagy(Player.order(rating: :desc), page: params[:page], items: 100)
  end

  def show
    @player = Player.find(params[:id])
  end
end
