# frozen_string_literal: true

class NationsController < ApplicationController
  include Pagy::Backend

  def index
    @pagy, @nations = pagy(Nation.order(:name), page: params[:page], items: 10)
  end

  def show
    @nation = Nation.find(params[:id])
  end
end
