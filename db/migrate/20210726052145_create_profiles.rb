class CreateProfiles < ActiveRecord::Migration[6.0]
  def change
    create_table :profiles do |t|
      t.date :age
      t.float :height
      t.float :weight
      t.integer :body_fat_percentage
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
