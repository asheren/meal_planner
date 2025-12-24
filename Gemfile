source 'https://rubygems.org'

ruby '2.7.8'

gem 'rails', '5.2.8.1'

# Load environment variables from .env file
gem 'dotenv-rails', '~> 2.7', groups: [:development, :test]

# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Using bootstrap-sass instead of twitter-bootstrap-rails (no LESS/therubyracer dependency)
gem 'bootstrap-sass', '~> 3.4.0'
gem 'jquery-ui-rails', '~> 6.0'
gem 'bootstrap-datepicker-rails', '~> 1.9.0'
gem 'acts-as-taggable-on', '~> 6.0'
gem 'ransack', '~> 2.3.0'

# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'

# Use CoffeeScript for .js.coffee assets and views
gem 'coffee-rails', '~> 4.2'

# Use jquery as the JavaScript library
gem 'jquery-rails'

# Build JSON APIs with ease
gem 'jbuilder', '~> 2.5'

# Reduces boot times through caching
gem 'bootsnap', '>= 1.1.0', require: false

group :development, :test do
  gem 'rspec-rails', '~> 4.0'
  gem 'capybara', '~> 3.0'
  gem 'sqlite3', '~> 1.3.13'
  gem 'pry-rails'
  gem 'byebug'
end

group :development do
  gem 'listen', '~> 3.0'
end

group :production do
  gem 'pg', '~> 1.0'
end
