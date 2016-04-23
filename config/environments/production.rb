Rails.application.configure do
  config.cache_classes = true
  config.eager_load = true
  config.assets.precompile =  ['*.js', '*.css.erb', '*.scss']
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
  config.serve_static_files = ENV['RAILS_SERVE_STATIC_FILES'].present?
  config.assets.js_compressor = :uglifier
  # config.assets.css_compressor = :sass
  config.assets.digest = true
  config.log_level = :debug
  config.assets.precompile += %w(*.png *.jpg *.jpeg *.gif *.svg *.ico *.eot *.ttf *.js)
  config.eager_load = true
  config.action_controller.perform_caching = true
  config.assets.compile = true
  config.log_formatter = ::Logger::Formatter.new
  config.active_record.dump_schema_after_migration = false
  config.active_support.deprecation = :notify
end
