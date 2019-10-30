# frozen_string_literal: true

class Player < ApplicationRecord
  belongs_to :card_type
  belongs_to :nation
  belongs_to :league
  belongs_to :club

  validates :name, presence: true

  def self.search(search, card_type)
    if search
      where('name LIKE ? AND card_type_id LIKE ?', "%#{search}%", "%#{card_type}%")
    else
      all
    end
  end
end
