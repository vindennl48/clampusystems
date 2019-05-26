class CreatePayments < ActiveRecord::Migration[5.2]
  def change
    create_table :payments do |t|
      t.decimal :amount
      t.decimal :fee
      t.date :date_due
      t.boolean :is_paid
      t.date :date_paid
      t.references :payment_type, foreign_key: true
      t.references :order, foreign_key: true
      t.references :credit_card, foreign_key: true

      t.timestamps
    end
  end
end
