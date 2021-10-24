class CreateClient < ActiveRecord::Migration[6.0]
  def change
    create_table :clients do |t|
      t.string  :first_name, null: false, default: ""
      t.string  :last_name, null: false, default: ""
      t.string  :residence_address, null: false, default: ""
      t.integer :phone, null: false, limit: 8
      t.integer :document_id, null: false, limit: 8

      t.timestamps
    end
  end
end
