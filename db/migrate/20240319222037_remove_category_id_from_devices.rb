class RemoveCategoryIdFromDevices < ActiveRecord::Migration[7.1]
  def change
    remove_column :devices, :category_id, :integer
  end
end
