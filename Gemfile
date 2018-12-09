source 'https://rubygems.org'

gem 'rails', '~> 5.1.6'
gem 'pg', '>= 0.18', '< 2.0'
gem 'puma', '~> 3.7'

# For authentication
gem 'clearance'

# Required for deploying to Heroku
gem 'jbuilder', '~> 2.5'

# TODO: : Ruby-Sass will be deprecated in 2019. Might be worth to look into
# https://github.com/sass/sassc-rails or figure out how to properly replace
# the Asset Pipeline with Webpack. AC 11/2019
gem 'sass-rails'
# Bulma for our main front end UI framework
gem 'bulma-rails', '~> 0.7.2'

gem 'webpacker', '~> 3.5'

# Upgrade rack security vulnerability
gem 'rack', '>= 2.0.6'

group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'capybara', '~> 2.13'
  gem 'selenium-webdriver'
  gem 'rspec-rails', '~> 3.8'
end

group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end
