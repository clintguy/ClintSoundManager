source 'https://rubygems.org'
# See https://github.com/sstephenson/execjs#readme for more supported runtimes


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails',                '4.2.0.beta2'
# Use ActiveModel has_secure_password - encryption for passwords
gem 'bcrypt',               '3.1.7'
# This gem is a port of Perl's Data::Faker library that generates fake data.
gem 'faker',                '1.4.2'
# This gem provides a simple and extremely flexible way to upload files from Ruby applications.
gem 'carrierwave',          '0.10.0'
# A ruby wrapper for ImageMagick or GraphicsMagick command line.
gem 'mini_magick',          '3.8.0'
# fog is the Ruby cloud services library, top to bottom:
gem 'fog',                  '1.23.0'

# JQuery/Javascript
# gem 'therubyracer',  platforms: :ruby
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier',             '2.5.3'
# Use CoffeeScript for .js.coffee assets and views
gem 'coffee-rails',         '4.0.1'
# Use jquery as the JavaScript library
gem 'jquery-rails',         '4.0.0.beta2'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks',           '2.3.0'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder',             '2.2.3'

# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc',                 '0.4.0', group: :doc

# Use Rails Html Sanitizer for HTML sanitization
gem 'rails-html-sanitizer', '1.0.1'

# Youtube Gem

# Style
# Use SCSS for stylesheets
gem 'will_paginate',           '3.0.7'
gem 'bootstrap-will_paginate', '0.0.10'
gem 'bootstrap-sass',          '3.2.0.0'
gem 'sass-rails',              '5.0.0.beta1'
gem 'jquery-datatables-rails', git: 'git://github.com/rweng/jquery-datatables-rails.git'

group :development, :test do
# Use sqlite3 as the database for Active Record
  gem 'sqlite3',     '1.3.9'                   
  gem 'byebug',      '3.4.0'
  gem 'web-console', '2.0.0.beta3'
# Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring',      '1.1.3'                      
end

group :test do
  gem 'minitest-reporters', '1.0.5'
  gem 'mini_backtrace',     '0.1.3'
  gem 'guard-minitest',     '2.3.1'
end

group :production do
  gem 'pg' 
  gem 'rails_12factor'
# Use Unicorn as the app server
  gem 'unicorn'
end

