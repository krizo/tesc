class AddBuildingIdToOrders < ActiveRecord::Migration
  def change
    change_column :orders, :building_id, :integer
    add_index :orders, :building_id
  end
end
