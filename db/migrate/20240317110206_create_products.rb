class CreateProducts < ActiveRecord::Migration[7.1]
  def change
    create_table :products do |t|
      t.string :title
      t.integer :price
      t.string :description
      t.string :category
      t.integer :user_id

      t.timestamps
    end
  end
end
