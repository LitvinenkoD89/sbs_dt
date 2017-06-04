ActiveAdmin.register Service do
  permit_params :name, :alias_name, :description, :short_description
  
  form(:html => { :multipart => true }) do |f|
    f.inputs do
      f.input :name
      f.input :alias_name

      f.input :description, :as => :ckeditor
      f.input :short_description, :as => :ckeditor
    end
    actions
  end  
end
