class RemovePasswordFromCustomer < ActiveRecord::Migration[5.0]
  def up
  	remove_column :customers, :password_digest
  end

  def down
  	add_column :customers, :password_digest
  end
end
