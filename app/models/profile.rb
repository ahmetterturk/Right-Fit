class Profile < ApplicationRecord
  belongs_to :user

  validates :height, numericality: { greater_than: 100, less_than: 300 }
  validates :weight, numericality: { greater_than: 20, less_than: 300 }
  validates :age, presence: true
  validate :age_limit

  def age_limit
    if age.present? && age.year > Time.now.year - 15
      errors.add(:age, " must be at least 15 years old to get a suggestion")
    end
  end
end
