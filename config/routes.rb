Rails.application.routes.draw do
  mount Ckeditor::Engine => '/ckeditor'
  devise_for :users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root to: "home#index"
  get "about_us" => "home#about_us"
  get "contacts" => "home#contacts"
  get "services" => "home#services"
  get "reviews" => "home#reviews"
  get "gallery" => "home#gallery"
  get "video" => "home#video"
  get "blog" => "home#blog"
end
