class CreateProvider < ActiveRecord::Migration[6.0]
  def change
    create_table :providers do |t|
      t.string  :name, null: false, default: ""
      t.string  :address, null: false, default: ""
      t.integer :phone, null: false, limit: 8

      t.timestamps
    end
  end
end
