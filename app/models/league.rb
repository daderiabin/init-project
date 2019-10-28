# frozen_string_literal: true

class League < ApplicationRecord
  has_many :clubs
  has_many :players

  validates :name, presence: true
end
