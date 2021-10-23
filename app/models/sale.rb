class Sale < ApplicationRecord
  validates_presence_of :date

  has_one :invoice
end
