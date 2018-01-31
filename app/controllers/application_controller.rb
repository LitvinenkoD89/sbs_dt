class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  # protect_from_forgery prepend: true
  # protect_from_forgery with: :null_session
  # protect_from_forgery except: :sign_in
  # skip_before_filter :verify_authenticity_token
end
