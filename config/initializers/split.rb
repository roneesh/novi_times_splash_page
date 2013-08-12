Split::Dashboard.use Rack::Auth::Basic do |username, password|
  username == 'admin' && password == 'admin'
end

Split.redis = REDIS