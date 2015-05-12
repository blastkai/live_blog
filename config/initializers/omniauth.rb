Rails.application.config.middleware.use OmniAuth::Builder do

  provider :google_oauth2, CLIENT_ID, CLIENT_SECRET,{
    :scope => 'email,profile',
    :provider_ignores_state => true,
    :name => "google"
  }
end
