class ChangeTypeToNameInContract < ActiveRecord::Migration
  def up
  	remove_column :contracts, :type
  	add_column :contracts, :name, :string
  end

  def down
  	remove_column :contracts, :name
  	add_column :contracts, :type, :text
  end
end
