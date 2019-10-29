# frozen_string_literal: true

class Club < ApplicationRecord
  belongs_to :league
  has_many :players

  validates :name, :full_name, :rating, :position, :age,
            :skill_moves, :weak_foot, :price, presence: true
  validates :rating, :age, :skill_moves, :weak_foot, :price, numericality: true
end
