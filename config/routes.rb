Rails.application.routes.draw do
  mount Ckeditor::Engine => '/ckeditor'
  devise_for :users
  devise_scope :user do 
    get '/users/sign_out' => 'devise/sessions#destroy' 
  end
  ActiveAdmin.routes(self)
  root to: "home#index"
  resources :services, param: :alias_name
  get "gallery" => "gallery#index"
  get "video"   => "video#index"
  get "blog"    => "blog#index"
  
  namespace :blog do
    resources :articles, only: [:show]
  end  
  post "order"  => "order#create"
  get "about_us" => "home#about_us"
  get "contacts" => "home#contacts"
  get "reviews"  => "home#reviews"
end
