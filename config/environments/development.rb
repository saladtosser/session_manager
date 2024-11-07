Rails.application.configure do
  # Settings specified here will take precedence over those in config/application.rb.

  # Code is reloaded on every request. This slows down response time but is perfect for development.
  config.cache_classes = false

  # Do not eager load code on boot.
  config.eager_load = false

  # Show full error reports.
  config.consider_all_requests_local = true

  # Enable/disable caching. By default caching is disabled.
  # Run rails dev:cache to toggle caching.
  config.action_controller.perform_caching = false

  # Don't care if the mailer can't send.
  config.action_mailer.raise_delivery_errors = true  # Change to true to catch mailer errors during development

  # Mailtrap SMTP settings
  config.action_mailer.delivery_method = :smtp
  config.action_mailer.smtp_settings = {
    user_name: '03b4d8d1ed55cb',  # Replace with your Mailtrap username
    password: 'ff8fcfb5c555d3',   # Replace with your Mailtrap password
    address: 'sandbox.smtp.mailtrap.io',
    domain: 'yourdomain.com',             # Replace with your domain or leave as is
    port: 2525,                           # This is the default Mailtrap SMTP port
    authentication: :plain
  }

  # Print deprecation notices to the Rails logger.
  config.active_support.deprecation = :log

  # Raise an error on page load if there are pending migrations.
  config.active_record.migration_error = :page_load

  # Highlight syntax in logs.
  config.log_tags = [ :request_id ]

  # Use a different cache store in production.
  # config.cache_store = :mem_cache_store

  # Use a different logger for distributed setups.
  # config.logger = ActiveSupport::TaggedLogging.new(SyslogLogger.new)

  # Use default logging formatter so that PID and timestamp are not suppressed.
  config.log_formatter = ::Logger::Formatter.new

  # Do not dump schema after migrations.
  config.active_record.dump_schema_after_migration = false

  # Additional configurations can be added below...
end
