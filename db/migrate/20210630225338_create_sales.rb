class CreateSales < ActiveRecord::Migration[5.2]
  def change
    create_table :sales do |t|
      t.date :date
      t.decimal :amount
      t.string :coffee_type
      t.decimal :price

      t.timestamps
    end
  end
end
