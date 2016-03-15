class Profile < ActiveRecord::Base
  belongs_to :project

  has_many :emails
  has_many :devices
  has_many :cookies
  has_many :mobiles

  def save_job_id(trigger_id, job_id)
    current_trigger_data = self.trigger_data[trigger_id].to_h
    job_ids = current_trigger_data['job_ids'].to_a
    job_ids << job_id
    current_trigger_data['job_ids'] = job_ids
    self.trigger_data[trigger_id] = current_trigger_data
    self.save
  end

  def remove_job_id(trigger_id, job_id)
    current_trigger_data = self.trigger_data[trigger_id].to_h
    job_ids = current_trigger_data['job_ids'].to_a
    job_ids.delete(job_id)
    current_trigger_data['job_ids'] = job_ids
    self.trigger_data[trigger_id] = current_trigger_data
    self.save
  end

  def replace_job_ids(trigger_id, job_ids)
    current_trigger_data = self.trigger_data[trigger_id].to_h
    current_trigger_data['job_ids'] = job_ids
    self.trigger_data[trigger_id] = current_trigger_data
    self.save
  end

  def save_trigger_expiration(trigger_id, expires_at)
    current_trigger_data = self.trigger_data[trigger_id].to_h
    current_trigger_data['expires_at'] = expires_at
    self.trigger_data[trigger_id] = current_trigger_data
    self.save
  end

  def get_trigger_expiration(trigger_id)
    self.trigger_data[trigger_id].to_h['expires_at']
  end
end
