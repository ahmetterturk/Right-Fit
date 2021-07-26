class AddUserRefToPrograms < ActiveRecord::Migration[6.0]
  def change
    add_reference :programs, :user, foreign_key: true
  end
end
