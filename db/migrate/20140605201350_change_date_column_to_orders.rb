class ChangeDateColumnToOrders < ActiveRecord::Migration
  def change
    change_column_default :orders, :status, "Nowe"
    change_column_default :orders, :requester_id, 1
  end
end
