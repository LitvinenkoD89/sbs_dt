ActiveAdmin.register Order do
  permit_params :name, :phone, :processed, :agent, :date_create
end
