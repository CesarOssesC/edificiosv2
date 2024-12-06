class Apartment < ApplicationRecord
  belongs_to :building


  has_many_attached :images
end
