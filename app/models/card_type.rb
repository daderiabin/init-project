# frozen_string_literal: true

class CardType < ApplicationRecord
  validates :quality, presence: true
end
