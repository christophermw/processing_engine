class ClientOrganization < ActiveRecord::Base
  belongs_to :client
  has_many :users, class_name: 'OrganizationUser'
  has_many :projects

  def redis_key; "events-#{client.name}-#{self.name}#{'-' + suborganization if suborganization.present?}" end

  def get_api
    # Example credentials
    # org_details = { organization: 'admin', username: 'allyapi', password: 'strongview', ms_host: 'svdemo2.strongviewdemo.com', suborganization: nil}
    org_details = { organization: self.name, username: client.ms_username, password: client.ms_password, ms_host: client.ms_api_host, suborganization: suborganization}
    MessageStudio::API.new(org_details)
  end

  def redis_cache
    cache = JSON.parse($redis.get(redis_key)) rescue {}
    cache.default = {}
    cache
  end

  def refresh_cache
    api = get_api
    results = redis_cache
    reachable = api.get_sso_token.present?
    results['reachable'] = reachable
    if reachable
      results['transactional_mailings']       = api.objects_hash('mailing', {:filter => {type: 'TRANSACTIONAL'}})
      results['transactional_mailing_fields'] = api.objects_hash('mailing', {:filter => {type: 'TRANSACTIONAL'}, field_name: 'recordStructure'})
      results['programs']                     = api.objects_hash('program')
      results['internal_data_sources']        = api.objects_hash('data_source', {filter: {value: 'INTERNAL'}})
      results['extensions']                   = api.objects_hash('data_source', {filter: {value: 'IDS_EXTENSION'}})
      internal_data_source_fields             = api.objects_hash('data_source', {field_name: 'field', filter: {value: 'INTERNAL'}})
      extension_fields                        = api.objects_hash('data_source', {field_name: 'field', filter: {value: 'IDS_EXTENSION'}})
      results['data_source_fields'] = {}
      internal_data_source_fields.merge(extension_fields).each do |id, fields|
        results['data_source_fields'][id] = fields.to_a.collect{|fields| fields.try(:name) }.reject{|f| f == "__sm_audience_id"}
      end
    end
    $redis.set(redis_key, results.to_json)
  end


end