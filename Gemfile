source 'https://rubygems.org'

 git_source(:github) do |repo_name|
   repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
   "https://github.com/#{repo_name}.git"
 end

 # Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
 gem 'rails', '~> 5.1.2'

 group :production do
   # Use pg as the production database for Active Record
   gem 'pg'
 end

 group :development do
   # Use sqlite3 as the development database for Active Record
   gem 'sqlite3'
   gem 'web-console', '~> 2.0'
 end

 # Use Puma as the app server
 gem 'puma', '~> 3.0'
 # Use SCSS for stylesheets
 gem 'bootstrap-sass', '~> 3.3.7'
 gem 'sass-rails', '>= 3.2'
 # Use Uglifier as compressor for JavaScript assets
 gem 'uglifier', '>= 1.3.0'

 # Use jquery as the JavaScript library
 gem 'jquery-rails'
 # Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
 gem 'turbolinks', '~> 5'
 # Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
 gem 'jbuilder', '~> 2.5'

 gem 'thor', '0.20.0'

 group :development do
   gem 'listen', '~> 3.0.5'
 end

 # Devise added for authentication
 gem 'devise'
 gem 'figaro', '1.0'

 # Use pundit for roles & policies
 gem 'pundit'

 # Use Faker for seed data
 gem 'faker'

 # Use stripe for payments processing
 gem 'stripe'

 # Use redcarpet for markdown
 gem 'redcarpet'
