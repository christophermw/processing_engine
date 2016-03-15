class ResetTrigger < Trigger

  belongs_to :parent_trigger, class_name: 'Trigger'

  after_create :create_action
  after_save :update_parent_trigger

  def create_action
    actions.create( type: 'ResetTriggerAction', data: {'trigger_id' => parent_trigger.id })
  end

  def update_parent_trigger
    parent_trigger.touch
  end

end