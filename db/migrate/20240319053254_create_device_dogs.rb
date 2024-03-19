class CreateDeviceDogs < ActiveRecord::Migration[7.1]
  def change
    create_table :device_dogs do |t|

      t.timestamps
    end
  end
end
