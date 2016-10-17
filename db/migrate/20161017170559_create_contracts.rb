class CreateContracts < ActiveRecord::Migration
  def change
    create_table :contracts do |t|
      t.string :type
      t.date :date
      t.string :period
      t.string :interval
      t.integer :fee

      t.timestamps null: false
    end
  end
end
