Split.configure do |config|
  config.db_failover = true
  config.db_failover_on_db_error = proc{|error| Rails.logger.error(error.message)}
  config.allow_multiple_experiments = true
  config.enabled = true
end

Split::Dashboard.use Rack::Auth::Basic do |username, password|
  username == 'admin' && password == 'admin'
end

