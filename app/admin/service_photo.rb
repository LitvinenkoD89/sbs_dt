ActiveAdmin.register ServicePhoto do
  permit_params :title, :description, :link_photo, :priority, :service_id
end
