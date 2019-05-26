class CreateCreditCards < ActiveRecord::Migration[5.2]
  def change
    create_table :credit_cards do |t|
      t.bigint :number
      t.integer :security
      t.date :exp_date
      t.string :name
      t.references :customer, foreign_key: true

      t.timestamps
    end
  end
end
