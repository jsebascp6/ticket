ActiveAdmin.register Client do
  permit_params :first_name, :last_name, :residence_address, :phone, :document_id

  form do |f|
    f.inputs do
      f.input :first_name
      f.input :last_name
      f.input :residence_address
      f.input :phone
      f.input :document_id
    end

    f.actions
  end
end
