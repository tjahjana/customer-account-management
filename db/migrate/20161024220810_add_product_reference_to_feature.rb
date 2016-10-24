class AddProductReferenceToFeature < ActiveRecord::Migration
  def change
    add_reference :features, :product, index: true, foreign_key: true
  end
end
