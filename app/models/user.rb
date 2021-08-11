class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  # associations
  has_and_belongs_to_many :programs_to_attend, class_name: 'Program', join_table: "clients_programs"
  has_many :programs_to_coach, class_name: "Program", foreign_key: "coach_id", dependent: :destroy
  has_many :reviews_to_make, class_name: "Review", foreign_key: "user_id", dependent: :destroy
  has_one :profile, dependent: :destroy

  # validations
  validates :first_name, :last_name, presence: true
  validates :first_name, length: { maximum: 100 }
  validates :last_name, length: { maximum: 100 }

  # scope method defined to find users with admin roles
  scope :admin, -> { where(admin: true) }
end
