class Event < ApplicationRecord
  validates_presence_of :site, :address, :name, :date
end
