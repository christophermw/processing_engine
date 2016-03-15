class EventField < Field

  has_many :tags_fields, foreign_key: 'field_id'
  has_many :tags, through: :tags_fields

  def operands_string
    "-"
  end

  def evaluate(params, profile_data)
    case datatype
    when 'String'
      params[name]
    when 'Integer'
      params[name].to_i
    when 'Float'
      params[name].to_f
    when 'Array'
      params[name].split(',')
    when 'Nested'
      JSON.parse(params[name])
    end
  end

end
