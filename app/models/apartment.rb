class Apartment < ApplicationRecord
  belongs_to :building
  has_many_attached :images

  validates :numero, presence: true
  validates :building_id, presence: true, uniqueness: { scope: :numero }

  scope :total_departamentos, -> { count }

end
