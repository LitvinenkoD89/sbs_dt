class ApplicationController < ActionController::Base
  # protect_from_forgery with: :exception
  # skip_before_action :verify_authenticity_token, only: [:create]

  def authenticate_active_admin_user!
    authenticate_user!
    unless current_user.superadmin?
      flash[:alert] = "Unauthorized Access!"
      redirect_to root_path
    end
  end
end
