class CreateDeliveries < ActiveRecord::Migration
  def change
    create_table :deliveries do |t|
      t.date :date
      t.integer :amount
      t.text :comments
      t.text :instructions

      t.timestamps
    end
  end
end
