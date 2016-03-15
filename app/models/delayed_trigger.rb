class DelayedTrigger < Trigger

  belongs_to :parent_trigger, class_name: 'Trigger'

  after_create :create_action
  after_save :update_parent_trigger

  def create_action
    if parent_trigger
      case parent_trigger.delay_status
      when 'execute'
        actions.create(type: 'ExecuteTriggerAction', data: {'trigger_id' => parent_trigger.id })
      when 'disable'
        actions.create(type: 'DeleteJobAction', data: {'trigger_id' => parent_trigger.id })
      end
    end
  end

  def update_parent_trigger
    parent_trigger.touch
  end


end