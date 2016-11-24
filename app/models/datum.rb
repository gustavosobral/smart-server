class Datum < ApplicationRecord
  belongs_to :node, counter_cache: true

  validates :luminosity, presence: true
  validates :temperature, presence: true
end
