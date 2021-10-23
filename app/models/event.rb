class Event < ApplicationRecord
  validates_presence_of :site, :address, :name, :date

  belongs_to :ticket, optional: true
  belongs_to :provider, optional: true

  has_many :events_clients
  has_many :clients, :through => :events_clients
end
