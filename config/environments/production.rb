Rails.application.configure do
  config.cache_classes = true
  config.eager_load = true
  config.assets.precompile =  ['*.js', '*.css', '*.css.erb']
  # Full error reports are disabled and caching is turned on.
  config.consider_all_requests_local       = false
  config.action_controller.perform_caching = true
  config.action_mailer.default_url_options = { :host => 'fcoders.herokuapp.com' }
ActionMailer::Base.smtp_settings = {
  :address        => "smtp.sendgrid.net",
  :port           => "25",
  :authentication => :plain,
  :user_name      => ENV['SENDGRID_USERNAME'],
  :password       => ENV['SENDGRID_PASSWORD'],
  :domain         => ENV['SENDGRID_DOMAIN']
}
  config.serve_static_assets = true
config.assets.precompile += %w[tinymce/tiny_mce.js tinymce/langs/en.js tinymce/themes/advanced/editor_template.js]
  # Disable serving static files from the `/public` folder by default since
  # Apache or NGINX already handles this.
  config.serve_static_files = ENV['RAILS_SERVE_STATIC_FILES'].present?

  # Compress JavaScripts and CSS.
  config.assets.js_compressor = :uglifier
  # config.assets.css_compressor = :sass

  # Do not fallback to assets pipeline if a precompiled asset is missed.

  config.assets.digest = true
  config.log_level = :debug

  config.assets.precompile += %w(*.png *.jpg *.jpeg *.gif *.svg *.ico *.eot *.ttf)

    config.eager_load = true

    config.action_controller.perform_caching = true

config.assets.compile = true

    config.log_formatter = ::Logger::Formatter.new
    config.active_record.dump_schema_after_migration = false
  # Send deprecation notices to registered listeners.
  config.active_support.deprecation = :notify

  # Use default logging formatter so that PID and timestamp are not suppressed.
  config.log_formatter = ::Logger::Formatter.new

  # Do not dump schema after migrations.
  config.active_record.dump_schema_after_migration = false
end
