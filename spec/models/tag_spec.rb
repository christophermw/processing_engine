require 'rails_helper'

describe Tag do
  it 'should destroy related tag fields when destroyed' do
    tag = create(:tag_with_fields)
    field_count = tag.tag_fields.count
    expect{tag.destroy}.to change{TagField.count}.by(field_count)
  end
end