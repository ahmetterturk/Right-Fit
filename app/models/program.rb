class Program < ApplicationRecord
    has_and_belongs_to_many :clients, class_name: "User", join_table: "clients_programs", optional: true
    has_many :reviews_to_receive, class_name: "Review", foreign_key: "program_id", dependent: :destroy
    has_one_attached :image, dependent: :destroy
    belongs_to :coach, class_name: "User"
    belongs_to :category

    # validates :title, :description, :duration, :content, :category_id, :image, presence: true
end
