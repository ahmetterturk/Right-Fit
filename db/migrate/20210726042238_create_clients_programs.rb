class CreateClientsPrograms < ActiveRecord::Migration[6.0]
  def change
    create_table :clients_programs do |t|
      t.references :user, null: false, foreign_key: true
      t.references :program, null: false, foreign_key: true

      t.timestamps
    end
  end
end
