ActiveAdmin.register Event do
  permit_params :title, :address, :started_at
end
