class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :set_sidebar

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name, :username, :url])

    devise_parameter_sanitizer.permit(:update, keys: [:first_name, :last_name, :username, :url])
  end

  def set_sidebar
    @show_sidebar = true
  end

 
end
