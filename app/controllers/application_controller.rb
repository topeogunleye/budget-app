class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?

  def not_found_method
    render file: Rails.public_path.join('404.html'), status: :not_found, layout: false
  end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: %i[name email image password])
    devise_parameter_sanitizer.permit(:account_update, keys: %i[name email image password current_password])
  end
end
