# frozen_string_literal: true

class LeaguesController < ApplicationController
  include Pagy::Backend

  def index
    @leagues = League.order(:name)
    # @pagy, @leagues = pagy(League.order(:name), page: params[:page], items: 25)
  end

  def show
    @league = League.find(params[:id])
  end
end
