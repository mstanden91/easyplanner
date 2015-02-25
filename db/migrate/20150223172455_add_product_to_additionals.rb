class AddProductToAdditionals < ActiveRecord::Migration
  def change
    add_reference :additionals, :product, index: true
    add_foreign_key :additionals, :products
  end
end
