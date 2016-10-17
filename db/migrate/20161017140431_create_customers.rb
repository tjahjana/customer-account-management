class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :email
      t.string :password_digest

      t.timestamps null: false
    end
    add_index :customers, :email, unique: true
  end
end
