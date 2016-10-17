class CreateFeatures < ActiveRecord::Migration
  def change
    create_table :features do |t|
      t.string :name
      t.integer :fee

      t.timestamps null: false
    end
  end
end
