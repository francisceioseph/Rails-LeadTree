class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :null_session

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up){ |u| u.permit( :type, :email, :password, :password_confirmation ) }
  end

end
