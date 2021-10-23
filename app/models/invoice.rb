class Invoice < ApplicationRecord
  validates_presence_of :date

  belongs_to :client, optional: true
end
