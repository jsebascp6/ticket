class AddInvoiceRefToClient < ActiveRecord::Migration[6.0]
  def change
    add_reference :invoices, :client, index: true, foreign_key: true
  end
end
