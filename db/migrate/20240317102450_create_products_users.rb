class CreateProductsUsers < ActiveRecord::Migration[7.1]
  def change
    create_table :products_users do |t|
      t.references :product, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
