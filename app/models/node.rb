class Node < ApplicationRecord
  has_many :data, dependent: :destroy

  validates :uuid, presence: true, uniqueness: true
end
