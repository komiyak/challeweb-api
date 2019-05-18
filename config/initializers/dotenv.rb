unless Rails.env.staging? || Rails.env.production?
  Dotenv.require_keys(
    'KEEP_DOTENV' # It's noticed this project needs the .env file.
  )
end
