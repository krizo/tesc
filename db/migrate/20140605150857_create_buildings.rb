class CreateBuildings < ActiveRecord::Migration
  def change
    create_table :buildings do |t|
      t.string :name
      t.string :investor
      t.text :adress
      t.string :city
      t.string :zip

      t.timestamps
    end
  end
end
