class Club < ApplicationRecord
  belongs_to :league

  validates :name, presence: true
end
