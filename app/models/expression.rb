class Expression < ActiveRecord::Base
  belongs_to :expressable, :polymorphic => true
  belongs_to :field

  after_create :add_parent_field_ids

  attr_accessor :use_parent_id_for_field

  OPERATORS = ['+', '-', 'x', '/']
  OPERAND_OPTIONS = [ ['User profile field', 1], ['Value', 2] ]

  def use_field_value?; operand_option == 1 end
  def use_alternate_value?; operand_option == 2 end

  def add_parent_field_ids
    if use_parent_id_for_field
      self.field_id = expressable.id
      save!
    end
  end


  def evaluate(params, profile_data = {}, operand = nil, datatype = nil)
    result = nil
    operand ||= field.try(:initial_value)
    if field.nil?
      value = alternate_value
    elsif field.is_a?(EventField)
      value = params[field.name]
    else
      value = profile_data[field.name]
    end

    case datatype
    when 'Integer'
      value = value.to_i
      operand = operand.to_i
    when 'Float'
      value = value.to_f
      operand = operand.to_f
    when 'Array'
      value = value.split(',')
      operand = operand.split(',')
    end

    begin
      result =
        case operator
        when '+'; operand + value
        when '-'; operand - value
        when 'x'; operand * value
        when '/'; operand / value
        else; value
        end
    rescue Exception => e
      result = nil
    end

    result

  end

end
