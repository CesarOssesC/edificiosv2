class Apartment < ApplicationRecord
  belongs_to :building
  has_many_attached :images

  validates :numero, presence: true
  validates :building_id, presence: true, uniqueness: { scope: :numero }

  scope :total_departamentos, -> { count }

  def self.ransackable_attributes(auth_object = nil)
    ["building_id", "created_at", "id", "numero", "updated_at"]
  end
end
