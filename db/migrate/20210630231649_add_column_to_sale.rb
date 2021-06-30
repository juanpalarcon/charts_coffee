class AddColumnToSale < ActiveRecord::Migration[5.2]
  def change
    add_column :sales, :origin, :string
  end
end
