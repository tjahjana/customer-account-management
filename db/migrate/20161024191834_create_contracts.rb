class CreateContracts < ActiveRecord::Migration
  def change
    create_table :contracts do |t|
      t.text :type
      t.date :date
      t.integer :period
      t.integer :interval
      t.integer :fee

      t.timestamps null: false
    end
  end
end
