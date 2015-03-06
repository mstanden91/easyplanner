class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :kind
      t.string :name
      t.string :age_range_from
      t.string :age_range_to
      t.references :timeservice, index: true
      t.references :maxcapacity, index: true
      t.integer :base_price
      t.string :option_transport
      t.references :list, index: true
      t.string :options_extra_time
      t.text :description_extra_time
      t.string :options_extra_kid_string
      t.integer :cost_extra_kid
      t.integer :max_extra_kid
      t.string :options_additional
      
      t.timestamps null: false
    end
    
    add_foreign_key :products, :timeservices
    add_foreign_key :products, :maxcapacities
    add_foreign_key :products, :lists
    
  end
end
#t.references :category, index: true
#add_foreign_key :products, :categories