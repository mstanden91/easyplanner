class RemoveKindFromProducts < ActiveRecord::Migration
  def change
    remove_column :products, :kind, :string
  end
end
