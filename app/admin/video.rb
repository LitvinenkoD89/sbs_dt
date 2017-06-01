ActiveAdmin.register Video do
  permit_params :title, :description, :youtube_url, :published
end
