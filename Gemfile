source 'https://rubygems.org'
ruby '2.1.1'

gem 'rails', '4.0.4'
gem 'bootstrap-sass', '2.3.2.0'
gem 'sprockets'
gem 'bcrypt-ruby', '3.1.2'

group :development, :test do
  gem 'guard-rspec'
  gem 'guard-livereload'
  gem 'spork-rails' #, github: 'sporkrb/spork-rails' # rubygems version not rails 4 compatible
  gem 'guard-spork'
  gem 'childprocess'
  gem 'rspec-rails'
end

group :test do
  gem 'selenium-webdriver'
  gem 'capybara', '2.1.0'
  gem 'factory_girl_rails'
  #gem 'cucumber', '1.2.5' # Spork not supported as of Cucumber 1.3.0, need to use 1.2.5
  #gem 'cucumber-rails', :require => false
  gem 'database_cleaner'

  # Uncomment this line on OS X.
  # gem 'growl', '1.0.3'

  # Uncomment these lines on Linux.
  gem 'libnotify', '0.8.0'
end

gem 'sass-rails', '~> 4.0.2'
gem 'uglifier', '2.1.1'
gem 'coffee-rails', '4.0.1'
gem 'jquery-rails', '3.0.4'
gem 'turbolinks', '1.1.1'
gem 'jbuilder', '1.0.2'
gem 'pg', '0.15.1'

group :doc do
  gem 'sdoc', '0.3.20', require: false
end

group :production do
  #gem 'rails_12factor', '0.0.2'
end
