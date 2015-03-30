class AddUserIdToEvent < ActiveRecord::Migration
  def change
    add_reference :events, :user, index: true
    add_foreign_key :events, :users
  end
end
