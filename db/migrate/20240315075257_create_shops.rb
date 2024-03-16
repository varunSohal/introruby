class CreateShops < ActiveRecord::Migration[7.1]
  def change
    create_table :shops do |t|
      t.string :model
      t.string :brand
      t.integer :price
      t.string :paymentmethod

      t.timestamps
    end
  end
end
