require 'rbconfig'
source 'https://rubygems.org'

gem 'rails', '3.2.6'
gem 'rails_admin'
gem "devise", ">= 2.1.2"
gem "cancan", ">= 1.6.8"
gem "rolify", ">= 3.1.0"
gem "bootstrap-sass", ">= 2.0.4.0"
gem "simple_form"
gem 'will_paginate', "3.0.pre4"
gem 'jquery-rails'
gem 'ancestry'
gem 'thumbs_up'
gem "acts_as_follower"
gem 'gravatar_image_tag'

group :production do
  gem 'pg'
end

group :development, :test do
  gem "rspec-rails", ">= 2.11.0"
  gem "guard", ">= 0.6.2"
  gem "guard-bundler", ">= 0.1.3"
  gem "guard-rails", ">= 0.0.3"
  gem "guard-rspec", ">= 0.4.3"
  gem 'sqlite3'
end

group :assets do
  gem 'sass-rails',   '~> 3.2.4'
  gem 'coffee-rails', '~> 3.2.2'
  gem 'uglifier', '>= 1.0.3'
end

group :test do
  gem "email_spec", ">= 1.2.1"
  gem "factory_girl_rails", ">= 3.5.0"
  gem 'launchy', '2.1.0'
  gem 'capybara', '1.1.2'
  gem 'database_cleaner', '0.7.0'
  gem 'guard-spork', '0.3.2'
  gem 'cucumber-rails', '1.2.1', :require => false
  gem 'spork', '0.9.0'
  gem 'rb-inotify', '0.8.8'
  gem 'libnotify', '0.5.9'
end
