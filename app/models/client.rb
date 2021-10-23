class Client < ApplicationRecord
  validates_presence_of :first_name, :last_name, :document_id, :phone, :residence_address

  has_many :events_clients
  has_many :events, :through => :events_clients
  has_many :invoices
end
