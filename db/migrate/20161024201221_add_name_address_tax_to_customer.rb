class AddNameAddressTaxToCustomer < ActiveRecord::Migration
  def up
  	add_column :customers, :name, :string
  	add_column :customers, :address, :string
  	add_column :customers, :tax, :integer
  end

  def down
  	remove_column :customers, :name
  	remove_column :customers, :address
  	remove_column :customers, :tax
  end
end
