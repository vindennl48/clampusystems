class AddNotesToOrder < ActiveRecord::Migration[5.2]
  def change
    add_column :orders, :notes, :string
  end
end
