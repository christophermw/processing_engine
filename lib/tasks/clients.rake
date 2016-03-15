namespace :clients do

  desc 'Create a new client'
  task :create, [:name, :ms_api_host, :ms_username, :ms_password] => :environment do |t,args|
    client = Client.new(name: args.name, ms_api_host: args.ms_api_host, ms_username: args.ms_username, ms_password: args.ms_password)
    client.save
  end

  desc 'Check client Message Studio API connection '
  task :check_ms_api_connection, [:client, :organization] => :environment do |t, args|
    client = Client.find_by(name: args.client)
    api = MessageStudio::API.new({
      organization: args.organization, 
      username: client.ms_username, 
      password: client.ms_password, 
      ms_host: client.ms_api_host
    })
    begin
      api.get_user_info(client.ms_username)
      puts "API Connection successful"
    rescue => e
      puts "Exception thrown"
      puts e.message
      puts e.backtrace.join("\n")
    ensure
    end
  end

  desc 'Refresh clients cached data'
  task :refresh_cache => :environment do
    Client.includes(:organizations).each do |client|
      client.organizations.each do |organization|
        organization.refresh_cache
      end
    end
  end

end
