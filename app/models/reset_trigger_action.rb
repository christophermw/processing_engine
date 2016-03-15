class ResetTriggerAction < Action

  def execute(delay, params, profile)
    ss = Sidekiq::ScheduledSet.new
    job_ids = profile.trigger_data[data['trigger_id']].to_h['job_ids'].to_a
    job_ids.delete_if do |jid|
      ss.find_job(jid).try(:delete)
    end
    profile.replace_job_ids(data['trigger_id'], job_ids)

    trigger_to_execute = Trigger.find(data['trigger_id'])
    trigger_to_execute.execute_actions(profile, params, trigger_to_execute.delay)
  end

end
