Rails.application.routes.draw do
  mount Ckeditor::Engine => '/ckeditor'
  devise_for :users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root to: "home#index"
  resources :services, param: :alias_name
  get "gallery" => "gallery#index"
  
  get "about_us" => "home#about_us"
  get "contacts" => "home#contacts"
  get "reviews" => "home#reviews"
  get "video" => "home#video"
  get "blog" => "home#blog"
end
