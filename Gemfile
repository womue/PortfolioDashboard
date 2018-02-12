source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

# Use Blacklight as discovery interface for Solr index.
# See https://github.com/projectblacklight/blacklight
gem 'blacklight', ">= 6.1"
# Use blacklight_advanced_search as plugin
# See https://github.com/projectblacklight/blacklight_advanced_search
gem "blacklight_advanced_search"
# Use D3.js for manipulating documents based on data. 
# D3 helps you bring data to life using HTML, SVG and CSS.
# d3-rails provides D3 for Rails 3.1 and higher.
# See: https://github.com/iblue/d3-rails
gem "d3-rails"

gem 'lightbox2-rails'
gem 'rsolr', '~> 1.0'

# Lazy loaded images on rails.
# See https://github.com/madetech/unveil-rails
# See http://luis-almeida.github.io/unveil/
gem 'unveil-rails', '~> 0.2.1'

# Domain parsing using Addressable
# https://github.com/samnissen/adomain
gem 'adomain'


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '5.0.2'
# Use sqlite3 as the database for Active Record
gem 'sqlite3'
# Use Puma as the app server
gem 'puma', '~> 3.0'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.2'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.5'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 3.0'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platform: :mri
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  gem 'web-console', '>= 3.3.0'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]

group :development, :test do
  gem 'solr_wrapper', '>= 0.3'
end