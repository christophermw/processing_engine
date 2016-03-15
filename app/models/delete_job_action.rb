class DeleteJobAction < Action

  def execute(delay, params, profile)
    ss = Sidekiq::ScheduledSet.new
    job_ids = profile.trigger_data[data['trigger_id']].to_h['job_ids']
    job_ids.each do |jid|
      ss.find_job(jid).delete
      job_ids.delete(jid)
    end
    profile.trigger_data[data['trigger_id']]['job_ids'] = job_ids
    profile.save
  end

end
