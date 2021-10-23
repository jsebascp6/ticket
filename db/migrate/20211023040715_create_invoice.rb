class CreateInvoice < ActiveRecord::Migration[6.0]
  def change
    create_table :invoices do |t|
      t.datetime :date, null: false

      t.timestamps
    end
  end
end
