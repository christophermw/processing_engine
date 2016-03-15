class LcmInsertWorker < SidekiqWorker

  def perform(params, profile_id, trigger_id, data)
    profile = Profile.find(profile_id)
    client_organization = profile.project.client_organization
    data_source_id = data['data_source_id']
    data_source_type = data['data_source_type']
    program_id = data['program_id']
    primary_key = profile.data[data['primary_key']]
    contact_id = profile.data[data['contact_id']]
    fields = {}
    data['mapping'].to_h.values.each do |mapping|
      fields[mapping['lcm_field']] = profile.data[mapping['tag_field']]
    end
    api = client_organization.get_api
    api.upsert_record(data_source_id, fields, data_source_type)
    api.add_to_program(program_id, primary_key, contact_id)
    profile.remove_job_id(trigger_id, self.jid)
  end

end