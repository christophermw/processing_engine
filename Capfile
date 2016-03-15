# Load DSL and set up stages
require 'capistrano/setup'

# Include default deployment tasks
require 'capistrano/deploy'

# Include puma deployment tasks
require 'capistrano/puma'

# Include migration deployment tasks
require 'capistrano/rails/migrations'

# Include asset deployment tasks
require 'capistrano/rails/assets'

# Include bundler deployment tasks
require 'capistrano/bundler'

# Include Sidekiq tasks
require 'capistrano/sidekiq'

# Load custom tasks from `lib/capistrano/tasks` if you have any defined
Dir.glob('lib/capistrano/tasks/*.rake').each { |r| import r }
