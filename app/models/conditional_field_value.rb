class ConditionalFieldValue < ActiveRecord::Base

  belongs_to :condition_field

  has_many :conditions, -> { order :position }, as: :conditionable, dependent: :destroy

  accepts_nested_attributes_for :conditions, allow_destroy: true

  def evaluate(params, profile_data)
    result = nil
    conditions.each do |c|
      result = c.evaluate(params, profile_data, result)
    end
    result
  end

end
