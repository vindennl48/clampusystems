class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.date :process_date
      t.date :expected_ship_date
      t.references :customer, foreign_key: true

      t.timestamps
    end
  end
end
