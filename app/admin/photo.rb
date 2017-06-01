ActiveAdmin.register Photo do
  permit_params :title, :description, :link_photo, :published
end
