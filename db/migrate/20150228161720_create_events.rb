class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :namekid
      t.references :comunne, index: true
      t.date :date
      t.string :timefrom
      t.string :timeto
      t.integer :guestkid
      t.integer :guestadult
      t.string :address
      t.string :phone
      t.string :agekidsfrom
  
      t.timestamps null: false
    end
    add_foreign_key :events, :comunnes
  end
end
