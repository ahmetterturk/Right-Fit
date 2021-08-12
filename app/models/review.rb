class Review < ApplicationRecord
  # associations
  belongs_to :user
  belongs_to :program

  # validations
  validates :content, presence: true, length: { maximum: 1000 }
end
