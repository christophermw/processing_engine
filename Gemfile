source 'https://rubygems.org'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.2.4'
# Use active record session store to store sessions
gem 'activerecord-session_store'
# Use postgres as the database for Active Record
gem 'pg'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.1.0'
# JQuery
gem 'jquery-rails'
gem 'jquery-ui-rails'
# Select2 for dropdowns
gem 'select2-rails'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc
# Iframe handling
gem 'rack-iframe', :path => 'vendor/gems/rack-iframe-0.0.3'
# Rails SOAP Gem
gem 'mumboe-soap4r'
# Use Puma as the app server
gem 'puma'
gem 'capistrano3-puma'
# Sidekiq for background tasks
gem 'sidekiq', '~> 4.0'
# Redis
gem 'redis'
# NewRelic
gem 'newrelic_rpm'
# Capistrano SCM Gitcopy
gem 'capistrano-scm-gitcopy'
# Capistrano Sidekiq Tasks
gem 'capistrano-sidekiq', github: 'seuros/capistrano-sidekiq'

# Javascript runtime
gem 'execjs'
gem 'therubyracer', :platforms => :ruby

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Act as List to handle objects with editable ordering
gem 'acts_as_list'
# Use chosen.js to make long unwieldy select boxes much more user-friendly.
gem "compass-rails", github: "Compass/compass-rails", branch: "master"
gem 'chosen-rails'

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'
  # RSpec testing
  gem 'rspec-rails'
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0'
  # Better Errors
  gem 'better_errors'
  gem 'binding_of_caller'
  # Pry console
  gem 'pry'
  # Quiet assets
  gem 'quiet_assets'
  # Use Capistrano for deployment
  gem 'capistrano-rails'
  # Bullet gem to help with N+1 queries
  gem 'bullet'
end

group :test do
  gem 'factory_girl_rails'
  gem 'capybara'
  gem 'faker'
  gem 'database_cleaner'
  gem 'rspec-sidekiq'
end