source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.6.3'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.2'
# Use postgresql as the database for Active Record
gem 'pg', '>= 0.18', '< 2.0'
# Use Puma as the app server
gem 'puma', '~> 3.11'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# A fast JSON:API serializer. See https://jsonapi.org/
gem 'fast_jsonapi', '~> 1'
# The fast JSON parser and Object marshaller.
gem 'oj', '~> 3'

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '>= 1.1.0', require: false

# Use Rack CORS for handling Cross-Origin Resource Sharing (CORS), making cross-origin AJAX possible
gem 'rack-cors'

# For the pagination
gem 'kaminari', '~> 1.1'

group :development, :test, :staging do
  # For setting up Ruby objects as test data for Rails
  gem 'factory_bot_rails', '~> 5'
  # For generating fake data
  gem 'faker', '~> 1'
end

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'
  # To load environment variables from `.env`.
  gem 'dotenv-rails', '~> 2'

  # RSpec for Rails
  gem 'rspec-rails', '~> 3'
end

group :development do
  gem 'listen', '>= 3.0.5', '< 3.2'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end
