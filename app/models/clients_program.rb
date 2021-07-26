class ClientsProgram < ApplicationRecord
  belongs_to :user
  belongs_to :program
end
