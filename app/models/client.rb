class Client < ApplicationRecord
  validates_presence_of :first_name, :last_name, :document_id, :phone, :residence_address
end
