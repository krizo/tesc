class RenameColumnToBuilding < ActiveRecord::Migration
  def change
    rename_column :buildings, :adress, :address
  end
end
