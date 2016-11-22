class Datum < ApplicationRecord
  belongs_to :node

  validates :luminosity, presence: true
  validates :temperature, presence: true
end
