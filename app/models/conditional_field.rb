class ConditionalField < Field
  belongs_to :project

  def operands_string
    names = conditional_field_values.joins( conditions: :field1).pluck('fields.name')
    names += conditional_field_values.joins( conditions: :field2).pluck('fields.name')
    names.uniq.join(' | ')
  end

  def evaluate(params, profile_data)
    conditional_field_values.each do |cfv|
      if cfv.evaluate(params, profile_data)
        return cfv.value
      end
    end
  end

end
