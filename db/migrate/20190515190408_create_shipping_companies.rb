class CreateShippingCompanies < ActiveRecord::Migration[5.2]
  def change
    create_table :shipping_companies do |t|
      t.string :name

      t.timestamps
    end
  end
end
