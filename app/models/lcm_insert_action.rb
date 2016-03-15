class LcmInsertAction < Action

  def execute(delay, params, profile)
    job_id = LcmInsertWorker.perform_in(delay, params, profile.id, trigger_id, data)
    profile.save_job_id(trigger_id, job_id) if delay > 0.minutes
  end

end