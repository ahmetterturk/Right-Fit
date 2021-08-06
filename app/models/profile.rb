class Profile < ApplicationRecord
  belongs_to :user

  validates :height, numericality: { greater_than: 100, less_than: 300 }
  validates :weight, numericality: { greater_than: 20, less_than: 300 }
  validates :age, presence: true
  validate :age_limit

  def age_limit
    if age.present? && age.year > Time.now.year - 12
      errors.add(:age, " must be 12 years or older to join")
    end
  end
end
