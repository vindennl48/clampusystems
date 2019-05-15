class CreatePackages < ActiveRecord::Migration[5.2]
  def change
    create_table :packages do |t|
      t.boolean :is_shipped
      t.date :ship_date
      t.references :shipping_company, foreign_key: true
      t.decimal :charged
      t.decimal :cost
      t.decimal :fee
      t.decimal :weight
      t.string :size
      t.string :tracking
      t.text :notes
      t.references :order, foreign_key: true

      t.timestamps
    end
  end
end
