class Users::OmniauthCallbacksController < Devise::OmniauthCallbacksController
 def all
    user = User.find_for_google_oauth2 request.env["omniauth.auth"]
    if user.persisted?
      flash.notice = "Signed in!"
      sign_in_and_redirect user
    else
      flash.notice = "We couldn't sign you in because: " + user.errors.full_messages.to_sentence
      redirect_to new_user_session_url
    end
  end

  alias_method :google_oauth2, :all

end