# frozen_string_literal: true

class Club < ApplicationRecord
  belongs_to :league
  has_many :players

  validates :name, presence: true
end
