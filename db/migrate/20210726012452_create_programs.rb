class CreatePrograms < ActiveRecord::Migration[6.0]
  def change
    create_table :programs do |t|
      t.string :title
      t.text :description
      t.integer :duration
      t.text :content
      t.integer :coach_id
      t.integer :client_id

      t.timestamps
    end
  end
end
