class Category < ApplicationRecord
    has_many :programs

    scope :endurance_and_flexbility, -> { where( category_name: ['Endurance Training', 'Flexibility and Mobility Training']) }
    scope :cardio_and_flexbility, -> { where( category_name: ['Cardiovascular Training', 'Strength Training']) }
    scope :flexibility, -> { where( category_name: 'Flexibility and Mobility Training')}
    scope :endurance, -> { where( category_name: 'Endurance Training') }
    scope :strength, -> { where( category_name: 'Strength Training') }
    scope :cardio, -> { where( category_name: 'Cardiovascular Training') }
end
