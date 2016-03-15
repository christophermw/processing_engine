class EmailWorker < SidekiqWorker

  def perform(params, profile_id, trigger_id, data)
    profile = Profile.find(profile_id)
    client_organization = profile.project.client_organization
    mailing_id = data['mailing_id']
    fields = {}
    data['mapping'].to_h.values.each do |mapping|
      fields[mapping['mailing_field']] = profile.data[mapping['tag_field']]
    end
    api = client_organization.get_api
    api.send_transactional_email(mailing_id, fields)
    profile.remove_job_id(trigger_id, self.jid)
  end

end