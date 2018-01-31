class ApplicationController < ActionController::Base
  include DeviseTokenAuth::Concerns::SetUserByToken
  before_filter :configure_permitted_parameters, if: :devise_controller?
  # protect_from_forgery with: :null_session
  skip_before_filter :verify_authenticity_token
end
