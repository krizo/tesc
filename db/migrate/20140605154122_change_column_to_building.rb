class ChangeColumnToBuilding < ActiveRecord::Migration
  def change
    rename_column :building, :adress, :address
  end
end
