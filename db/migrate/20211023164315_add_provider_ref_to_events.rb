class AddProviderRefToEvents < ActiveRecord::Migration[6.0]
  def change
    add_reference :events, :provider, index: true, foreign_key: true
    add_reference :events, :ticket, index: true, foreign_key: true
  end
end
