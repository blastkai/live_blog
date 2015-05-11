Rails.application.config.middleware.use OmniAuth::Builder do

  provider :google_oauth2, "148638033121-coog1gp1ma4cvffnc7o0hp41jh8r6q9q.apps.googleusercontent.com", "uKxzrS5_bJrTd7IDiFhDk6SV",{
    :scope => 'email,profile',
    :provider_ignores_state => true,
    :access_type => 'offline'
  }
end
