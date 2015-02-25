class CreateAdditionals < ActiveRecord::Migration
  def change
    create_table :additionals do |t|
      t.string :name
      t.integer :price
      t.timestamps null: false
    end 

  end
end

# t.references :product, index: true
#  add_foreign_key :additionals, :products