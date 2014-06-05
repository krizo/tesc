class AddRequesterIdToOrder < ActiveRecord::Migration
  def change
    add_column :orders, :requester_id, :integer
    add_index :orders, :requester_id
    add_index :orders, :id
  end
end
