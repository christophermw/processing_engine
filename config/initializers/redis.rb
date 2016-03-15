redis_config_file = File.join('config','redis.yml')

$redis = if File.exists?(redis_config_file)
  redis_config = YAML.load(File.read(redis_config_file))
  Redis.new(url: redis_config[Rails.env.to_s])
else
  Redis.new
end