class ChangingOrdersTableToOrders < ActiveRecord::Migration
  def change
    change_table :orders do |t|
      t.string  :status, :payment_type, :contract_nr
      t.text    :contract_details, :recipient, :driving_instructions, :contact_person
      t.boolean :hot
      t.integer :sap
    end
  end
end
