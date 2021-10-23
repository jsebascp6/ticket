class CreateEventsAndClients < ActiveRecord::Migration[6.0]
  def change
    create_table :events_clients do |t|
      t.belongs_to :event
      t.belongs_to :client
    end
  end
end
