class Category < ApplicationRecord
    # associations
    has_many :programs

    # scope methods defined to query values in the model to be used in the controllers(suggestions controller)
    scope :endurance_and_flexbility, -> { where( category_name: ['Endurance Training', 'Flexibility and Mobility Training']) }
    scope :cardio_and_strength, -> { where( category_name: ['Cardiovascular Training', 'Strength Training']) }
    scope :flexibility, -> { where( category_name: 'Flexibility and Mobility Training')}
    scope :endurance, -> { where( category_name: 'Endurance Training') }
    scope :strength, -> { where( category_name: 'Strength Training') }
    scope :cardio, -> { where( category_name: 'Cardiovascular Training') }
end
