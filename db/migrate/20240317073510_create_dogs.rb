class CreateDogs < ActiveRecord::Migration[7.1]
  def change
    create_table :dogs do |t|
      t.string :name
      t.string :size
      t.string :origin
      t.string :color

      t.timestamps
    end
  end
end
