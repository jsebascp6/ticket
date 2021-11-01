ActiveAdmin.register Event do
  permit_params :site, :address, :name, :date, :provider_id, :ticket_id
end
