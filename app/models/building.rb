class Building < ApplicationRecord
    has_many :apartments, dependent: :destroy
    has_and_belongs_to_many :features

    
end
