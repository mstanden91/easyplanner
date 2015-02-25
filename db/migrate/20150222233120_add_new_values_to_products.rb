class AddNewValuesToProducts < ActiveRecord::Migration
  def change
    add_column :products, :description, :text
    add_column :products, :photo, :string
  end
end
