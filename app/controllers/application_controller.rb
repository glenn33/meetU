class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?
  
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:full_name, :phone_number, :profile_picture, :banner_picture, :user_description])
    devise_parameter_sanitizer.permit(:account_update, keys: [:full_name, :phone_number, :profile_picture, :banner_picture, :user_description])
  end
end
