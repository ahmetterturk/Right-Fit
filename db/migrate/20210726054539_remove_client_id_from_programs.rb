class RemoveClientIdFromPrograms < ActiveRecord::Migration[6.0]
  def change
    remove_column :programs, :client_id, :integer
  end
end
