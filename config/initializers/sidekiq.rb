# Sidekiq.configure_server do |config|
#     config.redis = { url: 'redis://localhost:6379/0'  }
#   end
  
#   Sidekiq.configure_client do |config|
#     config.redis = { url: 'redis://localhost:6379/0'  }
#   end

redis_url = ENV['REDIS_URL']

Sidekiq.configure_server do |config|
config.redis = {
:namespace => 'workers'
}
end
Sidekiq.configure_client do |config|
config.redis = {
:namespace => 'workers'
}
end