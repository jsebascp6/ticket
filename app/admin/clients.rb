ActiveAdmin.register Client do
  permit_params :first_name, :last_name, :residence_address, :phone, :document_id
end
