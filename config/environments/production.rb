Rails.application.configure do
  # Settings specified here will take precedence over those in config/application.rb.

  # Code is not reloaded between requests.
  config.enable_reloading = false

  # Eager load code on boot.
  config.eager_load = true

  # Full error reports are disabled and caching is turned on.
  config.consider_all_requests_local = false
  config.action_controller.perform_caching = true

  # Disable serving static files from `public/`, relying on NGINX/Apache to do so instead.
  config.public_file_server.enabled = ENV['RAILS_SERVE_STATIC_FILES'].present?

  # Compress CSS using a preprocessor.
  # config.assets.css_compressor = :sass

  # Do not fall back to assets pipeline if a precompiled asset is missed.
  config.assets.compile = false

  # Enable serving of images, stylesheets, and JavaScripts from an asset server.
  # config.asset_host = "http://assets.example.com"

  # Specifies the header that your server uses for sending files.
  # config.action_dispatch.x_sendfile_header = "X-Sendfile" # for Apache
  # config.action_dispatch.x_sendfile_header = "X-Accel-Redirect" # for NGINX

  # Store uploaded files on the local file system (see config/storage.yml for options).
  config.active_storage.service = :local

  # Force all access to the app over SSL, use Strict-Transport-Security, and secure cookies.
  config.force_ssl = true

  # Log to STDOUT by default.
  config.logger = ActiveSupport::Logger.new(STDOUT)
    .tap { |logger| logger.formatter = ::Logger::Formatter.new }
    .then { |logger| ActiveSupport::TaggedLogging.new(logger) }

  # Prepend all log lines with the following tags.
  config.log_tags = [:request_id]

  # Use the lowest log level to ensure availability of diagnostic information when problems arise.
  config.log_level = :debug

  # Use a real queuing backend for Active Job (and separate queues per environment).
  # config.active_job.queue_adapter = :resque
  # config.active_job.queue_name_prefix = "session_manager_production"

  # Disable caching for Action Mailer templates.
  config.action_mailer.perform_caching = false

  # Set up email delivery method using CloudMailin SMTP
  config.action_mailer.delivery_method = :smtp
  config.action_mailer.smtp_settings = {
    address: "smtp.cloudmta.net",         # CloudMailin SMTP server
    port: 587,                            # Port for TLS
    authentication: :plain,               # Authentication type
    enable_starttls_auto: true,           # Enable TLS encryption
    user_name: "7a86dea731b2f948",        # Username from CloudMailin
    password: "2VxL5ZdzRAMfMsY4zKyGsNoe", # Password from CloudMailin
    domain: "iraqitechclub.com"           # Your domain
  }

  # Specify the default host for URLs in emails
  config.action_mailer.default_url_options = { host: "iraqitechclub.com", protocol: "https" }

  # Optional: Default "from" address for outgoing emails
  config.action_mailer.default_options = { from: "no-reply@iraqitechclub.com" }

  # Enable locale fallbacks for I18n (makes lookups for any locale fall back to the I18n.default_locale when a translation cannot be found).
  config.i18n.fallbacks = true

  # Don't log any deprecations.
  config.active_support.report_deprecations = false

  # Do not dump schema after migrations.
  config.active_record.dump_schema_after_migration = false

  # Enable DNS rebinding protection and other `Host` header attacks.
  # config.hosts = [
  #   "example.com",     # Allow requests from example.com
  #   /.*\.example\.com/ # Allow requests from subdomains like `www.example.com`
  # ]
end
