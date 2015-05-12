class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  def access_denied(exception)
    redirect_to admin_organizations_path, :alert => exception.message
  end
  # for Oauth2
  before_action :initialize_omniauth_state

  protected

  def initialize_omniauth_state
    session['omniauth.state'] = response.headers['X-CSRF-Token'] = form_authenticity_token
  end
  

end
