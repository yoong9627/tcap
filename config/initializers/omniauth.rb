OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :google_oauth2, '273353880896-84l94rqs8u00e6198uktd3clojj1jdmq.apps.googleusercontent.com', 'R0nNwEvTgzK1_pTcBTtHZv1L', {client_options: {ssl: {ca_file: Rails.root.join("cacert.pem").to_s}}}
end
