class CreateRequesters < ActiveRecord::Migration
  def change
    create_table :requesters do |t|
      t.string :name
      t.string :street
      t.string :zip_code
      t.string :city
      t.string :logo_image_name

      t.timestamps
    end
  end
end
