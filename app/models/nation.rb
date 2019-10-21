# frozen_string_literal: true

class Nation < ApplicationRecord
  validates :name, presence: true
end
