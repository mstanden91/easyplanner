class CreateComunnes < ActiveRecord::Migration
  def change
    create_table :comunnes do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
