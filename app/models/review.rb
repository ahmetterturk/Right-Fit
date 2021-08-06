class Review < ApplicationRecord
  belongs_to :user
  belongs_to :program

  validates :content, presence: true 
end
