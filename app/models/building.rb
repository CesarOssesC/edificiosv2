class Building < ApplicationRecord
    has_many :apartments, dependent: :destroy
    has_and_belongs_to_many :features

    validates :nombre, presence: true
    validates :direccion, presence: true

    scope :total_edificios, -> { count }

    def self.ransackable_attributes(auth_object = nil)
        ["created_at", "direccion", "id", "nombre", "updated_at"]
    end

    def self.ransackable_associations(auth_object = nil)
        ["apartments", "features"]
    end
end
