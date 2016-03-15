class Trigger < ActiveRecord::Base
  belongs_to :project
  belongs_to :tag

  has_many :conditions, -> { order :position }, as: :conditionable
  has_many :actions
  has_many :delayed_triggers, dependent: :destroy, foreign_key: 'parent_trigger_id'
  has_many :reset_triggers, dependent: :destroy, foreign_key: 'parent_trigger_id'

  has_one :email_action, dependent: :destroy
  has_one :lcm_insert_action, dependent: :destroy

  before_save :remove_disabled_wait_for_triggers

  after_update :update_delayed_trigger_actions

  accepts_nested_attributes_for :conditions, allow_destroy: true
  accepts_nested_attributes_for :delayed_triggers
  accepts_nested_attributes_for :reset_triggers
  accepts_nested_attributes_for :email_action, allow_destroy: true
  accepts_nested_attributes_for :lcm_insert_action, allow_destroy: true

  scope :visible, -> { where(parent_trigger_id: nil) }

  acts_as_list scope: :project

  DELAY_UNITS = [['Minutes','minutes'],['Hours','hours'],['Days','days']]

  def remove_disabled_wait_for_triggers
    unless delay_enabled?
      delayed_triggers.destroy_all
      self.delay_reset_enabled = false
      self.delay_unit = nil
      self.delay_amount = 0
      self.delay_status = nil
    end

    unless delay_reset_enabled?
      reset_triggers.destroy_all
    end
  end

  def update_delayed_trigger_actions
    if delay_status_changed?
      delayed_triggers.each do |dt|
        dt.actions.destroy_all
        dt.create_action
      end
    end
  end

  def executable?; tag_id? || conditions.any? end
  def wait_for_should_execute?; delay_status == "execute" end
  def wait_for_should_disable?; delay_status == "disable" end

  def delay
    return 0.minutes unless delay_enabled?

    case delay_unit
      when 'minutes'
        delay_amount.minutes
      when 'hours'
        delay_amount.hours
      when 'days'
        delay_amount.days
      else
        0.minutes
    end
  end

  def process(params, profile)
    return if tag_id && tag_id != params['id']
    if conditions.empty? || evaluate_conditions(params, profile.data)
      if delay_status == 'execute' && delayed_triggers.any?
        expires_at = Time.now + delay
        profile.save_trigger_expiration(id, expires_at)
      else
        execute_actions(profile, params, delay)
      end
    end
  end

  def execute_actions(profile, params = {}, execute_in = 0.minutes)
    actions.each do |a|
      a.execute(execute_in, params, profile)
    end
  end

  def evaluate_conditions(params, profile_data)
    result = nil
    conditions.includes(:field1, :field2).each do |c|
      result = c.evaluate(params, profile_data, result)
    end
    result
  end
end
