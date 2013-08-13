uri = URI.parse(ENV['REDISTOGO_URL'] || "redis://localhost:6379")
REDIS = Redis.new(:host => uri.host, :port => uri.port, :password => uri.password, :username => uri.user)
Split.redis = ENV["REDISTOGO_URL"] if ENV["REDISTOGO_URL"]
