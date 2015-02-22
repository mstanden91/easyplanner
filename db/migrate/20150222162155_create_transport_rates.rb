class CreateTransportRates < ActiveRecord::Migration
  def change
    create_table :transport_rates do |t|
      t.references :list, index: true
      t.references :comunne, index: true
      t.integer :price

      t.timestamps null: false
    end
    add_foreign_key :transport_rates, :lists
    add_foreign_key :transport_rates, :comunnes
  end
end
