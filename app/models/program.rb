class Program < ApplicationRecord
    belongs_to :coach, class_name: "User"
    # belongs_to :client, class_name: "User", optional: true
    has_and_belongs_to_many :clients, class_name: "User", join_table: "clients_programs", optional: true


    

end
