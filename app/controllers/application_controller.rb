class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery except: :sign_in
  respond_to :html, :json

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up){ |u| u.permit( :type, :email, :password, :password_confirmation ) }
  end

end
