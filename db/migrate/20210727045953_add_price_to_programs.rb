class AddPriceToPrograms < ActiveRecord::Migration[6.0]
  def change
    add_column :programs, :price, :integer
  end
end
