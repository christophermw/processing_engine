class CalculatedField < Field
  belongs_to :project

  def operands_string
    names = expressions.joins(:field).pluck('fields.name')
    names.uniq.join(' | ')
  end

  def evaluate(params, profile_data)
    result = nil
    expressions.each do |e|
      result = e.evaluate(params, profile_data, result, datatype)
    end
    result
  end

end
