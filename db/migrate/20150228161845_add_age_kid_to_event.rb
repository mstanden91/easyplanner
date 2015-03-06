class AddAgeKidToEvent < ActiveRecord::Migration
  def change
    add_column :events, :agekidsto, :string
  end
end
