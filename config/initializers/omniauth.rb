Rails.application.config.middleware.use OmniAuth::Builder do
  #  provider :google_oauth2, ENV["GOOGLE_CLIENT_ID"], ENV["GOOGLE_CLIENT_SECRET"]
  #provider :google_oauth2, ENV["148638033121-0p8i9vkhcfaobhfj0t50h6j1ub46ffr7.apps.googleusercontent.com"], ENV["MHkyMQNMfXfCsHLKrRNkwRIO"]
 # 148638033121-t37mp8p3ftk6jrjehlft24esml2suci7.apps.googleusercontent.com
provider :google_oauth2,"148638033121-coog1gp1ma4cvffnc7o0hp41jh8r6q9q.apps.googleusercontent.com","uKxzrS5_bJrTd7IDiFhDk6SV"
end
