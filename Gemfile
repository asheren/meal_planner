source 'https://rubygems.org'

ruby '3.2.2'

gem 'rails', '7.1.5'

# Load environment variables from .env file
gem 'dotenv-rails', '~> 3.0', groups: [:development, :test]

# The original asset pipeline for Rails
gem 'sprockets-rails'

# Use SCSS for stylesheets
gem 'sassc-rails', '~> 2.1'
# Bootstrap 5
gem 'bootstrap', '~> 5.3'
gem 'jquery-ui-rails', '~> 7.0'
gem 'bootstrap-datepicker-rails', '~> 1.10.0'
gem 'acts-as-taggable-on', '~> 10.0'
gem 'ransack', '~> 4.1'

# Use Terser for JavaScript compression
gem 'terser', '~> 1.2'

# Use jquery as the JavaScript library
gem 'jquery-rails'

# Build JSON APIs with ease
gem 'jbuilder', '~> 2.11'

# Reduces boot times through caching
gem 'bootsnap', require: false

# Web server
gem 'puma', '~> 6.4'

group :development, :test do
  gem 'rspec-rails', '~> 6.0'
  gem 'capybara', '~> 3.40'
  gem 'sqlite3', '~> 1.7'
  gem 'pry-rails'
  gem 'debug'
end

group :development do
  gem 'listen', '~> 3.8'
end

group :production do
  gem 'pg', '~> 1.5'
end
