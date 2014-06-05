class AddProdutColumnToDeliveries < ActiveRecord::Migration
  def change
    add_column :deliveries, :product_id, :integer
  end
end
