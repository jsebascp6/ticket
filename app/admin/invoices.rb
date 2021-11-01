ActiveAdmin.register Invoice do
  permit_params :date, :client_id, :sale_id
end
