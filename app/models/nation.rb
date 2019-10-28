# frozen_string_literal: true

class Nation < ApplicationRecord
  has_many :players

  validates :name, presence: true
end
