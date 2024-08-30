Rails.application.config.middleware.use OmniAuth::Builder do
  provider :twitter, Rails.applicaiton.credentials.dig(:twitter, :api_key),
           Rails.applicaiton.credentials.dig(:twitter, :api_secret)
end
