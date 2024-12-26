# Add the global source at the top of your Gemfile
source "https://rubygems.org"

# Specify the Ruby version
ruby '3.2.3'

# Core Gems
gem "rails", "~> 7.2.1", ">= 7.2.1.1"
gem "puma", ">= 5.0"
gem "importmap-rails"
gem "turbo-rails"
gem "stimulus-rails"
gem "jbuilder"
gem "bcrypt", "~> 3.1.7"
gem "bootsnap", require: false

# Database Gems
gem "sqlite3", "~> 2.5", group: [:development, :test] # Adjusted for compatibility with your system
gem "pg", group: :production

# Frontend and Assets
gem "bootstrap", "~> 5.1.3"
gem 'dotenv-rails', groups: [:development, :test]


# Communication and APIs
gem "twilio-ruby"
gem "sendgrid-ruby"

# Windows-specific dependencies
gem "tzinfo-data", platforms: %i[windows jruby]

# Optional Tools for Development
group :development do
  gem "web-console"
end

# Optional Tools for Testing
group :test do
  gem "capybara"
  gem "selenium-webdriver"
end

# Shared Development and Test Tools
group :development, :test do
  gem "debug", platforms: %i[mri mingw x64_mingw], require: "debug/prelude"
  gem "brakeman", require: false
  gem "rubocop-rails", require: false
end
