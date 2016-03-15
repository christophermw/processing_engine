class Action < ActiveRecord::Base

  belongs_to :trigger

  serialize :data, Hash

  def execute(delay, params, profile)
    raise 'This method has not been defined or is being run on an instance of the base class'
  end
end
