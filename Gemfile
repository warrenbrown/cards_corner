source 'https://rubygems.org'
ruby '2.2.3'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.2.5.1'
# Use sqlite3 as the database for Active Record
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.1.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby
gem 'frontend-generators'
# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc

gem 'sprockets-rails'
gem 'bootstrap-sass', '~> 3.3.5.1'
gem 'font-awesome-sass'
gem 'font-awesome-rails', '~> 4.3'
gem 'simple_form', '~> 3.1.0'
gem 'autoprefixer-rails'
gem 'devise', '~> 3.5.1'
gem "rolify"
gem 'yt', '~> 0.13.7'
gem 'rails-observers'

gem 'soundcloud', '~> 0.3.2'

gem 'devise_invitable'
gem 'pundit'
gem 'paperclip', '~> 4.3', '>= 4.3.5'
gem 'aws-sdk-v1'
gem 'video-js-rails', '~> 4.3', '>= 4.3.0.1'

group :test do
  gem 'capybara', '~> 2.4'
  gem 'selenium-webdriver', '~> 2.45'
  gem 'webrat'
  gem 'database_cleaner', '~> 1.4'
  gem 'json_spec'
  gem 'codeclimate-test-reporter', require: nil
  gem 'launchy'
  gem 'rspec-sidekiq', '~> 2.0.0'
  gem 'rspec-mocks'
end

group :development, :test do
  gem 'spring-commands-rspec'
    gem 'guard-rspec', require: false
    gem 'factory_girl_rails'
    gem 'faker'
    gem 'byebug'
    gem 'shoulda-matchers', require: false
    gem 'letter_opener'

    gem 'terminal-notifier-guard'
    gem 'pry-rails'
    gem 'pry-byebug'
    gem 'pry-rescue'
    gem 'pry-stack_explorer'
    gem 'rubocop'
    gem 'guard-rubocop'
    gem 'dotenv-rails'
    gem 'rspec-rails', '~> 3.4'
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0'
  gem 'spring'
  gem 'sqlite3'
end

group :production do
  gem 'pg'
  gem 'rails_12factor'
end
