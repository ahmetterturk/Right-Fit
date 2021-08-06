class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  validates :first_name, :last_name, presence: true

  has_and_belongs_to_many :programs_to_attend, class_name: 'Program', join_table: "clients_programs"
  has_many :programs_to_coach, class_name: "Program", foreign_key: "coach_id", dependent: :destroy
  has_one :profile, dependent: :destroy
  has_many :reviews_to_make, class_name: "Review", foreign_key: "user_id", dependent: :destroy


end