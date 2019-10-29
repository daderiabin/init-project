# frozen_string_literal: true

class ClubsController < ApplicationController
  include Pagy::Backend

  def index
    @clubs = Club.order(:name)
    # @pagy, @clubs = pagy(Club.order(:name), page: params[:page], items: 25)
  end

  def show
    @club = Club.find(params[:id])
  end
end
