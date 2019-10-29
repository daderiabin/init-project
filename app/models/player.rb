class Player < ApplicationRecord
  belongs_to :card_type
  belongs_to :nation
  belongs_to :league
  belongs_to :club

  validates :name, presence: true
end
