class Ticket < ApplicationRecord
  validates_presence_of :amount

  has_one :event
end
