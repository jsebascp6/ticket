class AddSaleToRefInvoice < ActiveRecord::Migration[6.0]
  def change
    add_reference :invoices, :sale, index: true, foreign_key: true
  end
end
