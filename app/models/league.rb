# frozen_string_literal: true

class League < ApplicationRecord
  has_many :clubs

  validates :name, presence: true
end
