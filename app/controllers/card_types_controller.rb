# frozen_string_literal: true

class CardTypesController < ApplicationController
  include Pagy::Backend

  def index
    @card_types = CardType.order(:quality)
    # @pagy, @card_types = pagy(CardType.order(:quality), page: params[:page], items: 10)
  end

  def show
    @card_type = CardType.find(params[:id])
  end
end
