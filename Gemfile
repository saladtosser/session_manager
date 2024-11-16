source "https://rubygems.org"

# Core Gems
gem "rails", "~> 7.2.1", ">= 7.2.1.1"
gem "puma", ">= 5.0"
gem "importmap-rails"
gem "turbo-rails"
gem "stimulus-rails"
gem "jbuilder"
gem "bcrypt", "~> 3.1.7" # For secure encryption and logins
gem "bootsnap", require: false

# Database Gems
group :development, :test do
  gem "sqlite3", ">= 1.4" # Use SQLite in development and test environments
end

group :production do
  gem "pg" # PostgreSQL for production
end

# Frontend and Assets
gem "bootstrap", "~> 5.1.3"
gem "dotenv-rails" # For managing environment variables locally

# API and Communication
gem "twilio-ruby" # WhatsApp Twilio API
gem "sendgrid-ruby" # SendGrid mail service

# Windows-specific dependencies
gem "tzinfo-data", platforms: %i[windows jruby]

# Optional Tools
group :development do
  gem "web-console" # For debugging in development
end

group :test do
  gem "capybara"
  gem "selenium-webdriver"
end

group :development, :test do
  gem "debug", platforms: %i[mri windows], require: "debug/prelude"
  gem "brakeman", require: false # Security vulnerability analysis
  gem "rubocop-rails-omakase", require: false # Ruby code styling
end
