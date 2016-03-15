class Condition < ActiveRecord::Base
  belongs_to :conditionable, :polymorphic => true
  belongs_to :field1, class_name: 'Field'
  belongs_to :field2, class_name: 'Field'

  after_save :update_conditionable

  OPERATORS = ['=','!=','>','>=','<','<=']
  OPERAND_OPTIONS = [ ['Field', 1], ['Value', 2] ]
  JOINING_OPERATORS = ['and','or']

  def use_field_value?; operand_option == 1 end
  def use_alternate_value?; operand_option == 2 end

  def update_conditionable
    conditionable.touch
  end

  def evaluate(params, profile_data = {}, previous_condition = nil, datatype = nil)
    result = false
    if field1.nil?
      field1_value = nil
    elsif field1.is_a?(EventField)
      field1_value = params[field1.name]
    else
      field1_value = profile_data[field1.name]
    end
    if field2.nil?
      field2_value = alternate_value
    elsif field2.is_a?(EventField)
      field2_value = params[field2.name]
    else
      field2_value = profile_data[field2.name]
    end

    if field1_value && field2_value
      case field1.datatype
      when 'Integer'
        field1_value = field1_value.to_i
        field2_value = field2_value.to_i
      when 'Float'
        field1_value = field1_value.to_f
        field2_value = field2_value.to_f
      when 'Array'
        field1_value = field1_value.split(',')
        field2_value = field2_value.split(',')
      end
      begin
        result = 
        case operator
        when '=';  field1_value == field2_value
        when '!='; field1_value != field2_value
        when '>';  field1_value >  field2_value
        when '>='; field1_value >= field2_value
        when '<';  field1_value <  field2_value
        when '<='; field1_value <= field2_value
        end
      rescue
        result = false
      end
    end

    unless previous_condition.nil?
      case previous_condition_operator
      when 'and'; previous_condition && result
      when 'or'; previous_condition || result
      end
    else
      result
    end

  end

end
