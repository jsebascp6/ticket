class Provider < ApplicationRecord
  validates_presence_of :name, :address, :phone

  has_many :events
end
