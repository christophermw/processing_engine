class ExecuteTriggerAction < Action

  def execute(delay, params, profile)
    trigger_expires_at = profile.get_trigger_expiration(data['trigger_id'])
    if trigger_expires_at.present? && trigger_expires_at > Time.now
      trigger_to_execute = Trigger.find(data['trigger_id'])
      trigger_to_execute.execute_actions(profile)
    end
  end

end
