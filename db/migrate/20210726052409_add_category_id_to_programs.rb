class AddCategoryIdToPrograms < ActiveRecord::Migration[6.0]
  def change
    add_reference :programs, :category, null: false, foreign_key: true
  end
end
