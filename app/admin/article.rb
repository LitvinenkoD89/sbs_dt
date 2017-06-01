ActiveAdmin.register Article do
  permit_params :title, :description, :short_description, :photo, :published, :date

  form(:html => { :multipart => true }) do |f|
    f.inputs do
      f.input :title
      f.input :description, :as => :ckeditor
      f.input :short_description, :as => :ckeditor
      f.input :photo, :as => :file
      f.input :published
      f.input :date, as: :datepicker, datepicker_options: { min_date: "2013-10-8",        max_date: "+3D" }
    end
    actions
  end  
end
