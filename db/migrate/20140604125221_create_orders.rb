class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :comment
      t.datetime :date

      t.timestamps
    end
  end
end
