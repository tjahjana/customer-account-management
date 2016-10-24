class AddContractReferenceToProduct < ActiveRecord::Migration
  def change
    add_reference :products, :contract, index: true, foreign_key: true
  end
end
