class CreateTimeservices < ActiveRecord::Migration
  def change
    create_table :timeservices do |t|
      t.string :name
      t.timestamps null: false
    end
  end
end
