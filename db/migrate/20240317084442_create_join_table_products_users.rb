class CreateJoinTableProductsUsers < ActiveRecord::Migration[7.1]
  def change
    create_join_table :products, :users do |t|
      t.references :products, null: false, foreign_key: true
      t.references :users, null: false, foreign_key: true
    end
  end
end
