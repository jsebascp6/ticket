class CreateTicket < ActiveRecord::Migration[6.0]
  def change
    create_table :tickets do |t|
      t.integer :amount, null: false

      t.timestamps
    end
  end
end
