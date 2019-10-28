# frozen_string_literal: true

class LeaguesController < ApplicationController
  include Pagy::Backend

  def index
    @pagy, @leagues = pagy(League.order(:name), page: params[:page], items: 10)
  end

  def show
    @league = League.find(params[:id])
  end
end
