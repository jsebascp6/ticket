class CreateEvent < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.string   :site, null: false, default: ""
      t.string   :address, null: false, default: ""
      t.string   :name, null: false, default: ""
      t.datetime :date, null: false

      t.timestamps
    end
  end
end
