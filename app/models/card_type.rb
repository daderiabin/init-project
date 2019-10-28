# frozen_string_literal: true

class CardType < ApplicationRecord
  has_many :players

  validates :quality, presence: true
end
