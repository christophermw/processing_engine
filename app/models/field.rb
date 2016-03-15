class Field < ActiveRecord::Base
  belongs_to :project

  has_many :expressions, -> { order :position }, as: :expressable, dependent: :destroy
  has_many :conditional_field_values, dependent: :destroy
  has_many :fields, dependent: :destroy

  accepts_nested_attributes_for :expressions, allow_destroy: true
  accepts_nested_attributes_for :conditional_field_values, allow_destroy: true
  accepts_nested_attributes_for :fields, allow_destroy: true

  DATATYPES = ['String', 'Integer', 'Float', 'Array', 'Nested']
  NESTED_DATATYPES = ['String', 'Integer', 'Float', 'Array']

  def calculated_field?; type == 'CalculatedField' end
  def conditional_field?; type == 'ConditionalField' end
  def event_field?; type == 'EventField' end

  def abbreviated_type
    type.to_s.gsub('Field','')
  end
end
