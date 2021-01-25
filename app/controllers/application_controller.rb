class ApplicationController < ActionController::Base
    protect_from_forgery with: :exception

  # #Adds permitted params when user sign_up (ex: first_name)
  before_action :configure_permitted_parameters, if: :devise_controller?
  
  protected

  def is_user_staff
      unless current_user && current_user.role === "staff"
        flash.notice = "You must be a staff member to access this page, please login."
        redirect_to pages_path
      end
  end

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name])

    devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:first_name, :last_name, :email, :password, :current_password)}
  end
end
