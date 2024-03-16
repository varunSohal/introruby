class CreateDevices < ActiveRecord::Migration[7.1]
  def change
    create_table :devices do |t|
      t.string :brand
      t.string :model
      t.integer :price
      t.string :image

      t.timestamps
    end
  end
end
