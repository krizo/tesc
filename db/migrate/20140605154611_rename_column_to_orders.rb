class RenameColumnToOrders < ActiveRecord::Migration
  def change
    rename_column :orders, :buidling_id, :building_id
  end
end
