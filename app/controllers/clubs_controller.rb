# frozen_string_literal: true

class ClubsController < ApplicationController
  include Pagy::Backend

  def index
    @pagy, @clubs = pagy(Club.order(:name), page: params[:page], items: 10)
  end

  def show
    @club = Club.find(params[:id])
  end
end
